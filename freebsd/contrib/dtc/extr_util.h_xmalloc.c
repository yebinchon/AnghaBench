
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 void* malloc (size_t) ;

__attribute__((used)) static inline void *xmalloc(size_t len)
{
 void *new = malloc(len);

 if (!new)
  die("malloc() failed\n");

 return new;
}
