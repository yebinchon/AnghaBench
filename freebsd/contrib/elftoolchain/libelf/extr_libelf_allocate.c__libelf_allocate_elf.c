
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * e_rawhdr; } ;
struct TYPE_6__ {int e_activations; int e_fd; int e_u; int e_version; scalar_t__ e_rawsize; int * e_rawfile; int * e_parent; int e_kind; scalar_t__ e_flags; int e_cmd; int e_class; int e_byteorder; TYPE_1__ e_hdr; } ;
typedef TYPE_2__ Elf ;


 int ELFCLASSNONE ;
 int ELFDATANONE ;
 int ELF_C_NULL ;
 int ELF_K_NONE ;
 int LIBELF_PRIVATE (int ) ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int RESOURCE ;
 int errno ;
 TYPE_2__* malloc (int) ;
 int memset (int *,int ,int) ;
 int version ;

Elf *
_libelf_allocate_elf(void)
{
 Elf *e;

 if ((e = malloc(sizeof(*e))) == ((void*)0)) {
  LIBELF_SET_ERROR(RESOURCE, errno);
  return ((void*)0);
 }

 e->e_activations = 1;
 e->e_hdr.e_rawhdr = ((void*)0);
 e->e_byteorder = ELFDATANONE;
 e->e_class = ELFCLASSNONE;
 e->e_cmd = ELF_C_NULL;
 e->e_fd = -1;
 e->e_flags = 0;
 e->e_kind = ELF_K_NONE;
 e->e_parent = ((void*)0);
 e->e_rawfile = ((void*)0);
 e->e_rawsize = 0;
 e->e_version = LIBELF_PRIVATE(version);

 (void) memset(&e->e_u, 0, sizeof(e->e_u));

 return (e);
}
