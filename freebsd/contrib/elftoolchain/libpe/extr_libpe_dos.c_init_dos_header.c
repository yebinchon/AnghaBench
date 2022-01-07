
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dh_magic; int dh_lastsize; int dh_nblock; int dh_hdrsize; int dh_maxalloc; int dh_sp; int dh_relocpos; int dh_lfanew; } ;
typedef TYPE_1__ PE_DosHdr ;



__attribute__((used)) static void
init_dos_header(PE_DosHdr *dh)
{

 dh->dh_magic[0] = 'M';
 dh->dh_magic[1] = 'Z';
 dh->dh_lastsize = 144;
 dh->dh_nblock = 3;
 dh->dh_hdrsize = 4;
 dh->dh_maxalloc = 65535;
 dh->dh_sp = 184;
 dh->dh_relocpos = 0x40;
 dh->dh_lfanew = 0x80;
}
