
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void* section; int value; } ;
struct TYPE_11__ {TYPE_1__ def; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_12__ {int size; struct TYPE_12__* next; } ;
typedef TYPE_3__ asection ;
struct TYPE_14__ {int hash; scalar_t__ relocatable; } ;
struct TYPE_13__ {TYPE_3__* sections; } ;


 int FALSE ;
 int TO_ADDR (int ) ;
 int TRUE ;
 void* bfd_abs_section_ptr ;
 char* bfd_get_section_name (TYPE_4__*,TYPE_3__*) ;
 int bfd_get_section_vma (TYPE_4__*,TYPE_3__*) ;
 void* bfd_link_hash_defined ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (int ,char*,int ,int ,int ) ;
 scalar_t__ bfd_link_hash_undefined ;
 int free (char*) ;
 TYPE_5__ link_info ;
 TYPE_4__* output_bfd ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static void
lang_set_startof (void)
{
  asection *s;

  if (link_info.relocatable)
    return;

  for (s = output_bfd->sections; s != ((void*)0); s = s->next)
    {
      const char *secname;
      char *buf;
      struct bfd_link_hash_entry *h;

      secname = bfd_get_section_name (output_bfd, s);
      buf = xmalloc (10 + strlen (secname));

      sprintf (buf, ".startof.%s", secname);
      h = bfd_link_hash_lookup (link_info.hash, buf, FALSE, FALSE, TRUE);
      if (h != ((void*)0) && h->type == bfd_link_hash_undefined)
 {
   h->type = bfd_link_hash_defined;
   h->u.def.value = bfd_get_section_vma (output_bfd, s);
   h->u.def.section = bfd_abs_section_ptr;
 }

      sprintf (buf, ".sizeof.%s", secname);
      h = bfd_link_hash_lookup (link_info.hash, buf, FALSE, FALSE, TRUE);
      if (h != ((void*)0) && h->type == bfd_link_hash_undefined)
 {
   h->type = bfd_link_hash_defined;
   h->u.def.value = TO_ADDR (s->size);
   h->u.def.section = bfd_abs_section_ptr;
 }

      free (buf);
    }
}
