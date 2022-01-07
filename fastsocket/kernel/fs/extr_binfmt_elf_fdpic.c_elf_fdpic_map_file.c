
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_8__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct elf_phdr {int dummy; } ;
struct TYPE_9__ {int e_phnum; scalar_t__ e_entry; unsigned long e_phoff; } ;
struct elf_fdpic_params {unsigned long load_addr; int flags; scalar_t__ entry_addr; scalar_t__ ph_addr; scalar_t__ dynamic_addr; int elfhdr_addr; TYPE_4__ hdr; struct elf32_phdr* phdrs; struct elf32_fdpic_loadmap* loadmap; } ;
struct elf32_phdr {scalar_t__ p_type; unsigned long p_offset; unsigned long p_filesz; scalar_t__ p_vaddr; int p_memsz; } ;
struct elf32_fdpic_loadseg {scalar_t__ p_vaddr; scalar_t__ p_memsz; scalar_t__ addr; } ;
struct elf32_fdpic_loadmap {unsigned int nsegs; struct elf32_fdpic_loadseg* segs; int version; } ;
struct TYPE_10__ {scalar_t__ d_tag; } ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {int i_ino; } ;
typedef TYPE_5__ Elf32_Dyn ;


 int ELF32_FDPIC_LOADMAP_VERSION ;
 int ELF_FDPIC_FLAG_ARRANGEMENT ;


 int ELIBBAD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long PAGE_ALIGN (scalar_t__) ;
 unsigned long PAGE_MASK ;
 scalar_t__ PT_DYNAMIC ;
 scalar_t__ PT_LOAD ;
 int elf_fdpic_map_file_by_direct_mmap (struct elf_fdpic_params*,struct file*,struct mm_struct*) ;
 int elf_fdpic_map_file_constdisp_on_uclinux (struct elf_fdpic_params*,struct file*,struct mm_struct*) ;
 int kdebug (char*,...) ;
 struct elf32_fdpic_loadmap* kzalloc (size_t,int ) ;
 int printk (char*,char const*,int ) ;

__attribute__((used)) static int elf_fdpic_map_file(struct elf_fdpic_params *params,
         struct file *file,
         struct mm_struct *mm,
         const char *what)
{
 struct elf32_fdpic_loadmap *loadmap;



 struct elf32_fdpic_loadseg *seg;
 struct elf32_phdr *phdr;
 unsigned long load_addr, stop;
 unsigned nloads, tmp;
 size_t size;
 int loop, ret;


 nloads = 0;
 for (loop = 0; loop < params->hdr.e_phnum; loop++)
  if (params->phdrs[loop].p_type == PT_LOAD)
   nloads++;

 if (nloads == 0)
  return -ELIBBAD;

 size = sizeof(*loadmap) + nloads * sizeof(*seg);
 loadmap = kzalloc(size, GFP_KERNEL);
 if (!loadmap)
  return -ENOMEM;

 params->loadmap = loadmap;

 loadmap->version = ELF32_FDPIC_LOADMAP_VERSION;
 loadmap->nsegs = nloads;

 load_addr = params->load_addr;
 seg = loadmap->segs;


 switch (params->flags & ELF_FDPIC_FLAG_ARRANGEMENT) {
 case 129:
 case 128:

  ret = elf_fdpic_map_file_constdisp_on_uclinux(params, file, mm);
  if (ret < 0)
   return ret;
  break;

 default:
  ret = elf_fdpic_map_file_by_direct_mmap(params, file, mm);
  if (ret < 0)
   return ret;
  break;
 }


 if (params->hdr.e_entry) {
  seg = loadmap->segs;
  for (loop = loadmap->nsegs; loop > 0; loop--, seg++) {
   if (params->hdr.e_entry >= seg->p_vaddr &&
       params->hdr.e_entry < seg->p_vaddr + seg->p_memsz) {
    params->entry_addr =
     (params->hdr.e_entry - seg->p_vaddr) +
     seg->addr;
    break;
   }
  }
 }


 stop = params->hdr.e_phoff;
 stop += params->hdr.e_phnum * sizeof (struct elf_phdr);
 phdr = params->phdrs;

 for (loop = 0; loop < params->hdr.e_phnum; loop++, phdr++) {
  if (phdr->p_type != PT_LOAD)
   continue;

  if (phdr->p_offset > params->hdr.e_phoff ||
      phdr->p_offset + phdr->p_filesz < stop)
   continue;

  seg = loadmap->segs;
  for (loop = loadmap->nsegs; loop > 0; loop--, seg++) {
   if (phdr->p_vaddr >= seg->p_vaddr &&
       phdr->p_vaddr + phdr->p_filesz <=
       seg->p_vaddr + seg->p_memsz) {
    params->ph_addr =
     (phdr->p_vaddr - seg->p_vaddr) +
     seg->addr +
     params->hdr.e_phoff - phdr->p_offset;
    break;
   }
  }
  break;
 }


 phdr = params->phdrs;
 for (loop = 0; loop < params->hdr.e_phnum; loop++, phdr++) {
  if (phdr->p_type != PT_DYNAMIC)
   continue;

  seg = loadmap->segs;
  for (loop = loadmap->nsegs; loop > 0; loop--, seg++) {
   if (phdr->p_vaddr >= seg->p_vaddr &&
       phdr->p_vaddr + phdr->p_memsz <=
       seg->p_vaddr + seg->p_memsz) {
    params->dynamic_addr =
     (phdr->p_vaddr - seg->p_vaddr) +
     seg->addr;




    if (phdr->p_memsz == 0 ||
        phdr->p_memsz % sizeof(Elf32_Dyn) != 0)
     goto dynamic_error;

    tmp = phdr->p_memsz / sizeof(Elf32_Dyn);
    if (((Elf32_Dyn *)
         params->dynamic_addr)[tmp - 1].d_tag != 0)
     goto dynamic_error;
    break;
   }
  }
  break;
 }
 kdebug("Mapped Object [%s]:", what);
 kdebug("- elfhdr   : %lx", params->elfhdr_addr);
 kdebug("- entry    : %lx", params->entry_addr);
 kdebug("- PHDR[]   : %lx", params->ph_addr);
 kdebug("- DYNAMIC[]: %lx", params->dynamic_addr);
 seg = loadmap->segs;
 for (loop = 0; loop < loadmap->nsegs; loop++, seg++)
  kdebug("- LOAD[%d] : %08x-%08x [va=%x ms=%x]",
         loop,
         seg->addr, seg->addr + seg->p_memsz - 1,
         seg->p_vaddr, seg->p_memsz);

 return 0;

dynamic_error:
 printk("ELF FDPIC %s with invalid DYNAMIC section (inode=%lu)\n",
        what, file->f_path.dentry->d_inode->i_ino);
 return -ELIBBAD;
}
