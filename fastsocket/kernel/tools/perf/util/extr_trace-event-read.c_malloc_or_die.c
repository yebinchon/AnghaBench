
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 void* malloc (int) ;

__attribute__((used)) static void *malloc_or_die(int size)
{
 void *ret;

 ret = malloc(size);
 if (!ret)
  die("malloc");
 return ret;
}
