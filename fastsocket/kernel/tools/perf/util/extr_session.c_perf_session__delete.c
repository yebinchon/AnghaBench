
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int fd; int host_machine; } ;


 int close (int ) ;
 int free (struct perf_session*) ;
 int machine__exit (int *) ;
 int perf_session__delete_dead_threads (struct perf_session*) ;
 int perf_session__delete_threads (struct perf_session*) ;
 int perf_session__destroy_kernel_maps (struct perf_session*) ;
 int vdso__exit () ;

void perf_session__delete(struct perf_session *self)
{
 perf_session__destroy_kernel_maps(self);
 perf_session__delete_dead_threads(self);
 perf_session__delete_threads(self);
 machine__exit(&self->host_machine);
 close(self->fd);
 free(self);
 vdso__exit();
}
