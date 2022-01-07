
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cts_size; int cts_data; } ;
typedef TYPE_1__ ctf_sect_t ;


 uintptr_t _PAGEMASK ;
 int munmap (void*,scalar_t__) ;

void
ctf_sect_munmap(const ctf_sect_t *sp)
{
 uintptr_t addr = (uintptr_t)sp->cts_data;
 uintptr_t pageoff = addr & ~_PAGEMASK;

 (void) munmap((void *)(addr - pageoff), sp->cts_size + pageoff);
}
