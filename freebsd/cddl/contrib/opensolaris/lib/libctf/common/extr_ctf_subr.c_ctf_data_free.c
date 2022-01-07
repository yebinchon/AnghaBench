
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int munmap (void*,size_t) ;

void
ctf_data_free(void *buf, size_t size)
{
 (void) munmap(buf, size);
}
