
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 void* malloc (unsigned int) ;

__attribute__((used)) static void *malloc_or_die(unsigned int size)
{
 void *data;

 data = malloc(size);
 if (!data)
  die("malloc");
 return data;
}
