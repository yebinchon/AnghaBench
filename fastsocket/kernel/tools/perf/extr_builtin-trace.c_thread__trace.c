
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_trace {int nr_events; } ;
struct thread {struct thread_trace* priv; } ;


 int PERF_COLOR_RED ;
 int color_fprintf (int ,int ,char*) ;
 int stdout ;
 struct thread_trace* thread_trace__new () ;

__attribute__((used)) static struct thread_trace *thread__trace(struct thread *thread)
{
 struct thread_trace *ttrace;

 if (thread == ((void*)0))
  goto fail;

 if (thread->priv == ((void*)0))
  thread->priv = thread_trace__new();

 if (thread->priv == ((void*)0))
  goto fail;

 ttrace = thread->priv;
 ++ttrace->nr_events;

 return ttrace;
fail:
 color_fprintf(stdout, PERF_COLOR_RED,
        "WARNING: not enough memory, dropping samples!\n");
 return ((void*)0);
}
