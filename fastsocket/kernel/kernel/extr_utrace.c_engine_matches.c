
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine_ops {int dummy; } ;
struct utrace_engine {void* data; struct utrace_engine_ops const* ops; } ;


 int UTRACE_ATTACH_MATCH_DATA ;
 int UTRACE_ATTACH_MATCH_OPS ;
 struct utrace_engine_ops const utrace_detached_ops ;

__attribute__((used)) static bool engine_matches(struct utrace_engine *engine, int flags,
      const struct utrace_engine_ops *ops, void *data)
{
 if ((flags & UTRACE_ATTACH_MATCH_OPS) && engine->ops != ops)
  return 0;
 if ((flags & UTRACE_ATTACH_MATCH_DATA) && engine->data != data)
  return 0;
 return engine->ops && engine->ops != &utrace_detached_ops;
}
