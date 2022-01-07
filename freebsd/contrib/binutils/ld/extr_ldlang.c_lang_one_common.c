
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {char* string; } ;
struct TYPE_10__ {unsigned int value; TYPE_6__* section; } ;
struct TYPE_9__ {unsigned int size; TYPE_1__* p; } ;
struct TYPE_11__ {TYPE_3__ def; TYPE_2__ c; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_5__ root; TYPE_4__ u; } ;
typedef unsigned int bfd_vma ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_13__ {unsigned int size; unsigned int alignment_power; char* owner; int flags; } ;
typedef TYPE_6__ asection ;
struct TYPE_14__ {int * map_file; scalar_t__ sort_common; } ;
struct TYPE_8__ {unsigned int alignment_power; TYPE_6__* section; } ;


 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 int SEC_ALLOC ;
 int SEC_IS_COMMON ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 char* bfd_demangle (int ,char*,int) ;
 scalar_t__ bfd_link_hash_common ;
 scalar_t__ bfd_link_hash_defined ;
 TYPE_7__ config ;
 int free (char*) ;
 int minfo (char*,...) ;
 unsigned int opb_shift ;
 int output_bfd ;
 int print_nl () ;
 int print_space () ;
 int sprintf (char*,char*,unsigned long) ;
 int sprintf_vma (char*,unsigned int) ;
 int strlen (char*) ;

__attribute__((used)) static bfd_boolean
lang_one_common (struct bfd_link_hash_entry *h, void *info)
{
  unsigned int power_of_two;
  bfd_vma size;
  asection *section;

  if (h->type != bfd_link_hash_common)
    return TRUE;

  size = h->u.c.size;
  power_of_two = h->u.c.p->alignment_power;

  if (config.sort_common
      && power_of_two < (unsigned int) *(int *) info)
    return TRUE;

  section = h->u.c.p->section;


  section->size += ((bfd_vma) 1 << (power_of_two + opb_shift)) - 1;
  section->size &= (- (bfd_vma) 1 << (power_of_two + opb_shift));


  if (power_of_two > section->alignment_power)
    section->alignment_power = power_of_two;


  h->type = bfd_link_hash_defined;
  h->u.def.section = section;
  h->u.def.value = section->size;


  section->size += size;



  section->flags |= SEC_ALLOC;
  section->flags &= ~SEC_IS_COMMON;

  if (config.map_file != ((void*)0))
    {
      static bfd_boolean header_printed;
      int len;
      char *name;
      char buf[50];

      if (! header_printed)
 {
   minfo (_("\nAllocating common symbols\n"));
   minfo (_("Common symbol       size              file\n\n"));
   header_printed = TRUE;
 }

      name = bfd_demangle (output_bfd, h->root.string,
      DMGL_ANSI | DMGL_PARAMS);
      if (name == ((void*)0))
 {
   minfo ("%s", h->root.string);
   len = strlen (h->root.string);
 }
      else
 {
   minfo ("%s", name);
   len = strlen (name);
   free (name);
 }

      if (len >= 19)
 {
   print_nl ();
   len = 0;
 }
      while (len < 20)
 {
   print_space ();
   ++len;
 }

      minfo ("0x");
      if (size <= 0xffffffff)
 sprintf (buf, "%lx", (unsigned long) size);
      else
 sprintf_vma (buf, size);
      minfo ("%s", buf);
      len = strlen (buf);

      while (len < 16)
 {
   print_space ();
   ++len;
 }

      minfo ("%B\n", section->owner);
    }

  return TRUE;
}
