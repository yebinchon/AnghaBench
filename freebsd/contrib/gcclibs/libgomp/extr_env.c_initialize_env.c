
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int PTHREAD_CREATE_DETACHED ;
 unsigned long PTHREAD_STACK_MIN ;
 int gomp_dyn_var ;
 int gomp_error (char*,...) ;
 int gomp_init_affinity () ;
 int gomp_init_num_threads () ;
 int gomp_nest_var ;
 unsigned long gomp_nthreads_var ;
 int gomp_thread_attr ;
 int omp_check_defines () ;
 scalar_t__ parse_affinity () ;
 int parse_boolean (char*,int *) ;
 int parse_schedule () ;
 scalar_t__ parse_unsigned_long (char*,unsigned long*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_attr_setstacksize (int *,unsigned long) ;
 unsigned long strerror (int) ;

__attribute__((used)) static void __attribute__((constructor))
initialize_env (void)
{
  unsigned long stacksize;


  omp_check_defines ();

  parse_schedule ();
  parse_boolean ("OMP_DYNAMIC", &gomp_dyn_var);
  parse_boolean ("OMP_NESTED", &gomp_nest_var);
  if (!parse_unsigned_long ("OMP_NUM_THREADS", &gomp_nthreads_var))
    gomp_init_num_threads ();
  if (parse_affinity ())
    gomp_init_affinity ();


  pthread_attr_init (&gomp_thread_attr);
  pthread_attr_setdetachstate (&gomp_thread_attr, PTHREAD_CREATE_DETACHED);

  if (parse_unsigned_long ("GOMP_STACKSIZE", &stacksize))
    {
      int err;

      stacksize *= 1024;
      err = pthread_attr_setstacksize (&gomp_thread_attr, stacksize);
      if (err != 0)
 gomp_error ("Stack size change failed: %s", strerror (err));
    }
}
