
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 void* realloc (void*,size_t) ;
 int stderr ;

__attribute__((used)) static void *
xrealloc(void *p, size_t n)
{
 p = realloc(p, n);
 if (p == ((void*)0)) {
  (void)fprintf(stderr, "ERROR slurping file: out of memory\n");
  exit(10);
 }
 return p;
}
