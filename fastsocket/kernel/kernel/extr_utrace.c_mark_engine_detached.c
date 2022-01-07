
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int flags; int * ops; } ;


 int QUIESCE ;
 int UTRACE_EVENT (int ) ;
 int smp_wmb () ;
 int utrace_detached_ops ;

__attribute__((used)) static void mark_engine_detached(struct utrace_engine *engine)
{
 engine->ops = &utrace_detached_ops;
 smp_wmb();
 engine->flags = UTRACE_EVENT(QUIESCE);
}
