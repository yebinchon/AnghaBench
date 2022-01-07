
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct segment {int type; int msz; int fsz; int off; int paddr; int vaddr; } ;
struct elfcopy {size_t ophnum; size_t iphnum; scalar_t__ strip; int v_seg; int ein; } ;
struct TYPE_4__ {int p_type; int p_memsz; int p_filesz; int p_offset; int p_paddr; int p_vaddr; } ;
typedef TYPE_1__ GElf_Phdr ;


 int EXIT_FAILURE ;
 int STAILQ_INSERT_TAIL (int *,struct segment*,int ) ;
 scalar_t__ STRIP_NONDEBUG ;
 struct segment* calloc (int,int) ;
 int elf_errmsg (int) ;
 scalar_t__ elf_getphnum (int ,size_t*) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 TYPE_1__* gelf_getphdr (int ,size_t,TYPE_1__*) ;
 int seg_list ;

void
setup_phdr(struct elfcopy *ecp)
{
 struct segment *seg;
 GElf_Phdr iphdr;
 size_t iphnum, i;

 if (elf_getphnum(ecp->ein, &iphnum) == 0)
  errx(EXIT_FAILURE, "elf_getphnum failed: %s",
      elf_errmsg(-1));

 ecp->ophnum = ecp->iphnum = iphnum;
 if (iphnum == 0)
  return;


 if (ecp->strip == STRIP_NONDEBUG) {
  ecp->ophnum = 0;
  return;
 }

 for (i = 0; i < iphnum; i++) {
  if (gelf_getphdr(ecp->ein, i, &iphdr) != &iphdr)
   errx(EXIT_FAILURE, "gelf_getphdr failed: %s",
       elf_errmsg(-1));
  if ((seg = calloc(1, sizeof(*seg))) == ((void*)0))
   err(EXIT_FAILURE, "calloc failed");
  seg->vaddr = iphdr.p_vaddr;
  seg->paddr = iphdr.p_paddr;
  seg->off = iphdr.p_offset;
  seg->fsz = iphdr.p_filesz;
  seg->msz = iphdr.p_memsz;
  seg->type = iphdr.p_type;
  STAILQ_INSERT_TAIL(&ecp->v_seg, seg, seg_list);
 }
}
