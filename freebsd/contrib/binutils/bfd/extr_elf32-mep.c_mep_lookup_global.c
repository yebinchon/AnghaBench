
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int value; TYPE_2__* section; } ;
struct TYPE_9__ {TYPE_3__ def; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_4__ u; } ;
typedef int bfd_vma ;
struct TYPE_10__ {int hash; } ;
struct TYPE_7__ {int output_offset; TYPE_1__* output_section; } ;
struct TYPE_6__ {int vma; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bfd_link_hash_defined ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (int ,char*,int ,int ,int ) ;
 TYPE_5__* mep_info ;

__attribute__((used)) static bfd_vma
mep_lookup_global
    (char * name,
     bfd_vma ofs,
     bfd_vma * cache,
     int * warn)
{
  struct bfd_link_hash_entry *h;

  if (*cache || *warn)
    return *cache;

  h = bfd_link_hash_lookup (mep_info->hash, name, FALSE, FALSE, TRUE);
  if (h == 0 || h->type != bfd_link_hash_defined)
    {
      *warn = ofs + 1;
      return 0;
    }
  *cache = (h->u.def.value
   + h->u.def.section->output_section->vma
   + h->u.def.section->output_offset);
  return *cache;
}
