
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int * ops; } ;
struct task_struct {int exit_state; } ;
struct ptrace_context {scalar_t__ options; int resume; scalar_t__ eventmsg; } ;


 int EINPROGRESS ;
 int EPERM ;
 struct utrace_engine* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct utrace_engine*) ;
 scalar_t__ PTRACE_O_DETACHED ;
 int QUIESCE ;
 int UTRACE_EVENT (int ) ;
 int UTRACE_RESUME ;
 int WARN_ON (int) ;
 struct ptrace_context* ptrace_context (struct utrace_engine*) ;
 struct utrace_engine* ptrace_lookup_engine (struct task_struct*) ;
 int ptrace_utrace_ops ;
 scalar_t__ unlikely (int) ;
 int utrace_barrier_uninterruptible (struct task_struct*,struct utrace_engine*) ;
 int utrace_engine_put (struct utrace_engine*) ;
 int utrace_set_events (struct task_struct*,struct utrace_engine*,int ) ;

__attribute__((used)) static struct utrace_engine *
ptrace_reuse_engine(struct task_struct *tracee)
{
 struct utrace_engine *engine;
 struct ptrace_context *ctx;
 int err = -EPERM;

 engine = ptrace_lookup_engine(tracee);
 if (IS_ERR(engine))
  return engine;

 ctx = ptrace_context(engine);
 if (unlikely(ctx->options == PTRACE_O_DETACHED)) {





  ctx->options = 0;
  ctx->eventmsg = 0;


  err = utrace_set_events(tracee, engine, UTRACE_EVENT(QUIESCE));
  if (!err || err == -EINPROGRESS) {
   ctx->resume = UTRACE_RESUME;

   err = utrace_barrier_uninterruptible(tracee, engine);
  }

  if (!err) {
   WARN_ON(engine->ops != &ptrace_utrace_ops &&
    !tracee->exit_state);
   return engine;
  }

  WARN_ON(engine->ops == &ptrace_utrace_ops);
 }

 utrace_engine_put(engine);
 return ERR_PTR(err);
}
