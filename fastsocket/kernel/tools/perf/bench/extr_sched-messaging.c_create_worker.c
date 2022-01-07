
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;


 int PTHREAD_STACK_MIN ;
 int barf (char*) ;
 int exit (int) ;
 int fork () ;
 int fprintf (int ,char*,char*,int) ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setstacksize (int *,int ) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;
 int stderr ;
 char* strerror (int) ;
 void* stub1 (void*) ;
 int thread_mode ;

__attribute__((used)) static pthread_t create_worker(void *ctx, void *(*func)(void *))
{
 pthread_attr_t attr;
 pthread_t childid;
 int err;

 if (!thread_mode) {


  switch (fork()) {
  case -1:
   barf("fork()");
   break;
  case 0:
   (*func) (ctx);
   exit(0);
   break;
  default:
   break;
  }

  return (pthread_t)0;
 }

 if (pthread_attr_init(&attr) != 0)
  barf("pthread_attr_init:");


 if (pthread_attr_setstacksize(&attr, PTHREAD_STACK_MIN) != 0)
  barf("pthread_attr_setstacksize");


 err = pthread_create(&childid, &attr, func, ctx);
 if (err != 0) {
  fprintf(stderr, "pthread_create failed: %s (%d)\n",
   strerror(err), err);
  exit(-1);
 }
 return childid;
}
