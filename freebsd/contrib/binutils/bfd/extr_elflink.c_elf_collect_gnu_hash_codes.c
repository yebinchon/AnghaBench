
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* string; } ;
struct TYPE_6__ {scalar_t__ link; } ;
struct TYPE_7__ {TYPE_1__ i; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_4__ root; TYPE_2__ u; } ;
struct elf_link_hash_entry {int dynindx; TYPE_5__ root; } ;
struct collect_gnu_hash_codes {unsigned long* hashcodes; size_t nsyms; unsigned long* hashval; size_t min_dynindx; TYPE_3__* bed; } ;
typedef int bfd_boolean ;
struct TYPE_8__ {int (* elf_hash_symbol ) (struct elf_link_hash_entry*) ;} ;


 int ELF_VER_CHR ;
 int TRUE ;
 unsigned long bfd_elf_gnu_hash (char const*) ;
 scalar_t__ bfd_link_hash_warning ;
 char* bfd_malloc (int) ;
 int free (char*) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,int ) ;
 int stub1 (struct elf_link_hash_entry*) ;

__attribute__((used)) static bfd_boolean
elf_collect_gnu_hash_codes (struct elf_link_hash_entry *h, void *data)
{
  struct collect_gnu_hash_codes *s = data;
  const char *name;
  char *p;
  unsigned long ha;
  char *alc = ((void*)0);

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;


  if (h->dynindx == -1)
    return TRUE;


  if (! (*s->bed->elf_hash_symbol) (h))
    return TRUE;

  name = h->root.root.string;
  p = strchr (name, ELF_VER_CHR);
  if (p != ((void*)0))
    {
      alc = bfd_malloc (p - name + 1);
      memcpy (alc, name, p - name);
      alc[p - name] = '\0';
      name = alc;
    }


  ha = bfd_elf_gnu_hash (name);



  s->hashcodes[s->nsyms] = ha;
  s->hashval[h->dynindx] = ha;
  ++s->nsyms;
  if (s->min_dynindx < 0 || s->min_dynindx > h->dynindx)
    s->min_dynindx = h->dynindx;

  if (alc != ((void*)0))
    free (alc);

  return TRUE;
}
