
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_source_file {int table; scalar_t__ filename; struct macro_source_file* next_included; struct macro_source_file* includes; } ;


 int macro_bcache_free (int ,char*) ;
 int macro_free (struct macro_source_file*,int ) ;

__attribute__((used)) static void
free_macro_source_file (struct macro_source_file *src)
{
  struct macro_source_file *child, *next_child;


  for (child = src->includes; child; child = next_child)
    {
      next_child = child->next_included;
      free_macro_source_file (child);
    }

  macro_bcache_free (src->table, (char *) src->filename);
  macro_free (src, src->table);
}
