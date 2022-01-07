
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANON ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 void* mmap (int *,size_t,int,int,int,int ) ;

void *
ctf_data_alloc(size_t size)
{
 return (mmap(((void*)0), size, PROT_READ | PROT_WRITE,
     MAP_PRIVATE | MAP_ANON, -1, 0));
}
