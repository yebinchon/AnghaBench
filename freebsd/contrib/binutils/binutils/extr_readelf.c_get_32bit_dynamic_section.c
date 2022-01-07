
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int d_val; } ;
struct TYPE_12__ {TYPE_2__ d_un; int d_tag; } ;
struct TYPE_9__ {scalar_t__ d_val; } ;
struct TYPE_11__ {TYPE_1__ d_un; scalar_t__ d_tag; } ;
typedef int FILE ;
typedef TYPE_3__ Elf_Internal_Dyn ;
typedef TYPE_4__ Elf32_External_Dyn ;


 scalar_t__ BYTE_GET (int ) ;
 scalar_t__ DT_NULL ;
 int _ (char*) ;
 TYPE_3__* cmalloc (int,int) ;
 int dynamic_addr ;
 int dynamic_nent ;
 TYPE_3__* dynamic_section ;
 int dynamic_size ;
 int error (int ) ;
 int free (TYPE_4__*) ;
 TYPE_4__* get_data (int *,int *,int ,int,int,int ) ;

__attribute__((used)) static int
get_32bit_dynamic_section (FILE *file)
{
  Elf32_External_Dyn *edyn, *ext;
  Elf_Internal_Dyn *entry;

  edyn = get_data (((void*)0), file, dynamic_addr, 1, dynamic_size,
     _("dynamic section"));
  if (!edyn)
    return 0;




  for (ext = edyn, dynamic_nent = 0;
       (char *) ext < (char *) edyn + dynamic_size;
       ext++)
    {
      dynamic_nent++;
      if (BYTE_GET (ext->d_tag) == DT_NULL)
 break;
    }

  dynamic_section = cmalloc (dynamic_nent, sizeof (*entry));
  if (dynamic_section == ((void*)0))
    {
      error (_("Out of memory\n"));
      free (edyn);
      return 0;
    }

  for (ext = edyn, entry = dynamic_section;
       entry < dynamic_section + dynamic_nent;
       ext++, entry++)
    {
      entry->d_tag = BYTE_GET (ext->d_tag);
      entry->d_un.d_val = BYTE_GET (ext->d_un.d_val);
    }

  free (edyn);

  return 1;
}
