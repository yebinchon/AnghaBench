
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ALIGN (unsigned int,int) ;
 void* _smem_find (unsigned int,unsigned int*) ;
 int pr_err (char*,unsigned int,unsigned int,unsigned int) ;

void *smem_find(unsigned id, unsigned size_in)
{
 unsigned size;
 void *ptr;

 ptr = _smem_find(id, &size);
 if (!ptr)
  return 0;

 size_in = ALIGN(size_in, 8);
 if (size_in != size) {
  pr_err("smem_find(%d, %d): wrong size %d\n",
         id, size_in, size);
  return 0;
 }

 return ptr;
}
