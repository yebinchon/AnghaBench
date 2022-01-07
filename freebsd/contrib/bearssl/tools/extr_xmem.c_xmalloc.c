
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,unsigned long) ;
 void* malloc (size_t) ;
 int stderr ;

void *
xmalloc(size_t len)
{
 void *buf;

 if (len == 0) {
  return ((void*)0);
 }
 buf = malloc(len);
 if (buf == ((void*)0)) {

  fprintf(stderr, "ERROR: could not allocate %lu byte(s)\n",
   (unsigned long)len);
  exit(EXIT_FAILURE);



 }
 return buf;
}
