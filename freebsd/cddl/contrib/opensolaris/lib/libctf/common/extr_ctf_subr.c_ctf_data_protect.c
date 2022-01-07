
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROT_READ ;
 int mprotect (void*,size_t,int ) ;

void
ctf_data_protect(void *buf, size_t size)
{
 (void) mprotect(buf, size, PROT_READ);
}
