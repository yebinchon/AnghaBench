
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_reloc_table_entry {int name; } ;


 unsigned int ARRAY_SIZE (struct group_reloc_table_entry*) ;
 int FAIL ;
 int SUCCESS ;
 struct group_reloc_table_entry* group_reloc_table ;
 int strlen (int ) ;
 scalar_t__ strncasecmp (int ,char*,int) ;

__attribute__((used)) static int
find_group_reloc_table_entry (char **str, struct group_reloc_table_entry **out)
{
  unsigned int i;
  for (i = 0; i < ARRAY_SIZE (group_reloc_table); i++)
    {
      int length = strlen (group_reloc_table[i].name);

      if (strncasecmp (group_reloc_table[i].name, *str, length) == 0 &&
          (*str)[length] == ':')
        {
          *out = &group_reloc_table[i];
          *str += (length + 1);
          return SUCCESS;
        }
    }

  return FAIL;
}
