
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gomp_thread {int release; } ;


 int gomp_sem_init (int *,int ) ;
 struct gomp_thread gomp_tls_data ;
 int gomp_tls_key ;
 int pthread_key_create (int *,int *) ;
 int pthread_setspecific (int ,struct gomp_thread*) ;

__attribute__((used)) static void __attribute__((constructor))
initialize_team (void)
{
  struct gomp_thread *thr;


  static struct gomp_thread initial_thread_tls_data;

  pthread_key_create (&gomp_tls_key, ((void*)0));
  pthread_setspecific (gomp_tls_key, &initial_thread_tls_data);





  thr = &initial_thread_tls_data;

  gomp_sem_init (&thr->release, 0);
}
