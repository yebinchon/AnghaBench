
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 void* realloc (void*,int) ;
 int release_pack_memory (size_t,int) ;

void *xrealloc(void *ptr, size_t size)
{
 void *ret = realloc(ptr, size);
 if (!ret && !size)
  ret = realloc(ptr, 1);
 if (!ret) {
  release_pack_memory(size, -1);
  ret = realloc(ptr, size);
  if (!ret && !size)
   ret = realloc(ptr, 1);
  if (!ret)
   die("Out of memory, realloc failed");
 }
 return ret;
}
