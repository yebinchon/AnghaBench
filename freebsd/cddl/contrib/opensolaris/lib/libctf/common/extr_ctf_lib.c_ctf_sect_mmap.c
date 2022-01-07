
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cts_offset; scalar_t__ cts_data; scalar_t__ cts_size; } ;
typedef TYPE_1__ ctf_sect_t ;
typedef scalar_t__ caddr_t ;


 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 size_t _PAGEMASK ;
 scalar_t__ mmap64 (int *,scalar_t__,int ,int ,int,size_t) ;

const void *
ctf_sect_mmap(ctf_sect_t *sp, int fd)
{
 size_t pageoff = sp->cts_offset & ~_PAGEMASK;

 caddr_t base = mmap64(((void*)0), sp->cts_size + pageoff, PROT_READ,
     MAP_PRIVATE, fd, sp->cts_offset & _PAGEMASK);

 if (base != MAP_FAILED)
  sp->cts_data = base + pageoff;

 return (base);
}
