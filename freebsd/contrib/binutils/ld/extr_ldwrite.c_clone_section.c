
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* section; scalar_t__ value; } ;
struct TYPE_9__ {TYPE_1__ def; } ;
struct bfd_link_hash_entry {TYPE_2__ u; int type; } ;
typedef int bfd ;
struct TYPE_10__ {int alignment_power; scalar_t__ reloc_count; scalar_t__ orelocation; struct TYPE_10__* output_section; int output_offset; scalar_t__ size; int lma; int user_set_vma; int vma; int flags; } ;
typedef TYPE_3__ asection ;
struct TYPE_11__ {int hash; } ;


 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 int FALSE ;
 scalar_t__ ISDIGIT (char) ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ bfd_family_coff (int *) ;
 char* bfd_get_unique_section_name (int *,char*,int*) ;
 int bfd_link_hash_defined ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (int ,char*,int ,int ,int ) ;
 TYPE_3__* bfd_make_section_anyway (int *,char*) ;
 int einfo (int ,...) ;
 int free (char*) ;
 TYPE_4__ link_info ;
 int memcpy (char*,char const*,unsigned int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 char* xmalloc (unsigned int) ;

__attribute__((used)) static asection *
clone_section (bfd *abfd, asection *s, const char *name, int *count)
{
  char *tname;
  char *sname;
  unsigned int len;
  asection *n;
  struct bfd_link_hash_entry *h;



  len = strlen (name);
  tname = xmalloc (len + 1);
  memcpy (tname, name, len + 1);

  while (len && ISDIGIT (tname[len-1]))
    len--;
  if (len > 1 && tname[len-1] == '.')

    tname[len-1] = 0;



  if (bfd_family_coff (abfd) && strlen (tname) > 5)
    {


      if (CONST_STRNEQ (name, ".stab")
   || strcmp (name, "$GDB_SYMBOLS$") == 0)
 {
   einfo (_ ("%F%P: cannot create split section name for %s\n"), name);

   return ((void*)0);
 }
      tname[5] = 0;
    }

  if ((sname = bfd_get_unique_section_name (abfd, tname, count)) == ((void*)0)
      || (n = bfd_make_section_anyway (abfd, sname)) == ((void*)0)
      || (h = bfd_link_hash_lookup (link_info.hash,
        sname, TRUE, TRUE, FALSE)) == ((void*)0))
    {
      einfo (_("%F%P: clone section failed: %E\n"));

      return ((void*)0);
    }
  free (tname);


  h->type = bfd_link_hash_defined;
  h->u.def.value = 0;
  h->u.def.section = n;

  n->flags = s->flags;
  n->vma = s->vma;
  n->user_set_vma = s->user_set_vma;
  n->lma = s->lma;
  n->size = 0;
  n->output_offset = s->output_offset;
  n->output_section = n;
  n->orelocation = 0;
  n->reloc_count = 0;
  n->alignment_power = s->alignment_power;
  return n;
}
