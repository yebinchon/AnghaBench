
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bts_trace {int (* read ) (int ,void*,struct bts_struct*) ;} ;
struct TYPE_4__ {int to; int from; } ;
struct TYPE_3__ {TYPE_2__ lbr; } ;
struct bts_struct {int qualifier; TYPE_1__ variant; } ;



 int WARN_ON_ONCE (int) ;
 int stub1 (int ,void*,struct bts_struct*) ;
 int this_tracer ;
 int trace_hw_branch (int ,int ) ;

__attribute__((used)) static void trace_bts_at(const struct bts_trace *trace, void *at)
{
 struct bts_struct bts;
 int err = 0;

 WARN_ON_ONCE(!trace->read);
 if (!trace->read)
  return;

 err = trace->read(this_tracer, at, &bts);
 if (err < 0)
  return;

 switch (bts.qualifier) {
 case 128:
  trace_hw_branch(bts.variant.lbr.from, bts.variant.lbr.to);
  break;
 }
}
