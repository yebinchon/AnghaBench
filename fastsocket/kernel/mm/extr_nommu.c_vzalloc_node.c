
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* vzalloc (unsigned long) ;

void *vzalloc_node(unsigned long size, int node)
{
 return vzalloc(size);
}
