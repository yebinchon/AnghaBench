
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int section_table_size; TYPE_2__** section_table; } ;
typedef TYPE_1__ ieee_data_type ;
typedef int bfd_size_type ;
typedef int bfd ;
struct TYPE_9__ {unsigned int target_index; } ;
typedef TYPE_2__ asection ;


 char* bfd_alloc (int *,int) ;
 TYPE_2__* bfd_make_section (int *,char*) ;
 TYPE_2__** bfd_realloc (TYPE_2__**,int) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static asection *
get_section_entry (bfd *abfd, ieee_data_type *ieee, unsigned int index)
{
  if (index >= ieee->section_table_size)
    {
      unsigned int c, i;
      asection **n;
      bfd_size_type amt;

      c = ieee->section_table_size;
      if (c == 0)
 c = 20;
      while (c <= index)
 c *= 2;

      amt = c;
      amt *= sizeof (asection *);
      n = bfd_realloc (ieee->section_table, amt);
      if (n == ((void*)0))
 return ((void*)0);

      for (i = ieee->section_table_size; i < c; i++)
 n[i] = ((void*)0);

      ieee->section_table = n;
      ieee->section_table_size = c;
    }

  if (ieee->section_table[index] == (asection *) ((void*)0))
    {
      char *tmp = bfd_alloc (abfd, (bfd_size_type) 11);
      asection *section;

      if (!tmp)
 return ((void*)0);
      sprintf (tmp, " fsec%4d", index);
      section = bfd_make_section (abfd, tmp);
      ieee->section_table[index] = section;
      section->target_index = index;
      ieee->section_table[index] = section;
    }
  return ieee->section_table[index];
}
