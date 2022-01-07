
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct trace_probe* name; void* system; } ;
struct TYPE_4__ {unsigned long offset; int pre_handler; void* addr; struct trace_probe* symbol_name; } ;
struct TYPE_5__ {TYPE_1__ kp; int handler; } ;
struct trace_probe {struct trace_probe* symbol; TYPE_3__ call; int list; TYPE_2__ rp; } ;


 int EINVAL ;
 int ENOMEM ;
 struct trace_probe* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SIZEOF_TRACE_PROBE (int) ;
 int is_good_name (char const*) ;
 int kfree (struct trace_probe*) ;
 int kprobe_dispatcher ;
 int kretprobe_dispatcher ;
 void* kstrdup (char const*,int ) ;
 struct trace_probe* kzalloc (int ,int ) ;

__attribute__((used)) static struct trace_probe *alloc_trace_probe(const char *group,
          const char *event,
          void *addr,
          const char *symbol,
          unsigned long offs,
          int nargs, bool is_return)
{
 struct trace_probe *tp;
 int ret = -ENOMEM;

 tp = kzalloc(SIZEOF_TRACE_PROBE(nargs), GFP_KERNEL);
 if (!tp)
  return ERR_PTR(ret);

 if (symbol) {
  tp->symbol = kstrdup(symbol, GFP_KERNEL);
  if (!tp->symbol)
   goto error;
  tp->rp.kp.symbol_name = tp->symbol;
  tp->rp.kp.offset = offs;
 } else
  tp->rp.kp.addr = addr;

 if (is_return)
  tp->rp.handler = kretprobe_dispatcher;
 else
  tp->rp.kp.pre_handler = kprobe_dispatcher;

 if (!event || !is_good_name(event)) {
  ret = -EINVAL;
  goto error;
 }

 tp->call.name = kstrdup(event, GFP_KERNEL);
 if (!tp->call.name)
  goto error;

 if (!group || !is_good_name(group)) {
  ret = -EINVAL;
  goto error;
 }

 tp->call.system = kstrdup(group, GFP_KERNEL);
 if (!tp->call.system)
  goto error;

 INIT_LIST_HEAD(&tp->list);
 return tp;
error:
 kfree(tp->call.name);
 kfree(tp->symbol);
 kfree(tp);
 return ERR_PTR(ret);
}
