
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_size_type ;
struct TYPE_8__ {scalar_t__ size; scalar_t__ name; scalar_t__ rawsize; TYPE_1__* output_section; int owner; scalar_t__ output_offset; } ;
typedef TYPE_2__ asection ;
struct TYPE_9__ {int hash; scalar_t__ reduce_memory_overheads; } ;
struct TYPE_7__ {scalar_t__ owner; scalar_t__ vma; } ;


 int SECTION_NAME_MAP_LENGTH ;
 scalar_t__ TO_ADDR (scalar_t__) ;
 char* _ (char*) ;
 int bfd_link_hash_traverse (int ,int ,TYPE_2__*) ;
 int init_opb () ;
 TYPE_5__ link_info ;
 int minfo (char*,scalar_t__,...) ;
 scalar_t__ output_bfd ;
 int print_all_symbols (TYPE_2__*) ;
 scalar_t__ print_dot ;
 int print_nl () ;
 int print_one_symbol ;
 int print_space () ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void
print_input_section (asection *i)
{
  bfd_size_type size = i->size;
  int len;
  bfd_vma addr;

  init_opb ();

  print_space ();
  minfo ("%s", i->name);

  len = 1 + strlen (i->name);
  if (len >= SECTION_NAME_MAP_LENGTH - 1)
    {
      print_nl ();
      len = 0;
    }
  while (len < SECTION_NAME_MAP_LENGTH)
    {
      print_space ();
      ++len;
    }

  if (i->output_section != ((void*)0) && i->output_section->owner == output_bfd)
    addr = i->output_section->vma + i->output_offset;
  else
    {
      addr = print_dot;
      size = 0;
    }

  minfo ("0x%V %W %B\n", addr, TO_ADDR (size), i->owner);

  if (size != i->rawsize && i->rawsize != 0)
    {
      len = SECTION_NAME_MAP_LENGTH + 3;



      len += 8;

      while (len > 0)
 {
   print_space ();
   --len;
 }

      minfo (_("%W (size before relaxing)\n"), i->rawsize);
    }

  if (i->output_section != ((void*)0) && i->output_section->owner == output_bfd)
    {
      if (link_info.reduce_memory_overheads)
 bfd_link_hash_traverse (link_info.hash, print_one_symbol, i);
      else
 print_all_symbols (i);

      print_dot = addr + TO_ADDR (size);
    }
}
