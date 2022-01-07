
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_info_table {struct line_info* lcl_head; struct line_info* last_line; int abfd; } ;
struct line_info {unsigned int line; unsigned int column; int end_sequence; struct line_info* prev_line; int * filename; int address; } ;
typedef int bfd_vma ;
typedef int bfd_size_type ;


 void* bfd_alloc (int ,int) ;
 scalar_t__ new_line_sorts_after (struct line_info*,struct line_info*) ;
 int strcpy (int *,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
add_line_info (struct line_info_table *table,
        bfd_vma address,
        char *filename,
        unsigned int line,
        unsigned int column,
        int end_sequence)
{
  bfd_size_type amt = sizeof (struct line_info);
  struct line_info* info = bfd_alloc (table->abfd, amt);


  info->address = address;
  info->line = line;
  info->column = column;
  info->end_sequence = end_sequence;

  if (filename && filename[0])
    {
      info->filename = bfd_alloc (table->abfd, strlen (filename) + 1);
      if (info->filename)
 strcpy (info->filename, filename);
    }
  else
    info->filename = ((void*)0);
  if (!table->last_line
      || new_line_sorts_after (info, table->last_line))
    {

      info->prev_line = table->last_line;
      table->last_line = info;


      if (!table->lcl_head)
 table->lcl_head = info;
    }
  else if (!new_line_sorts_after (info, table->lcl_head)
    && (!table->lcl_head->prev_line
        || new_line_sorts_after (info, table->lcl_head->prev_line)))
    {

      info->prev_line = table->lcl_head->prev_line;
      table->lcl_head->prev_line = info;
    }
  else
    {


      struct line_info* li2 = table->last_line;
      struct line_info* li1 = li2->prev_line;

      while (li1)
 {
   if (!new_line_sorts_after (info, li2)
       && new_line_sorts_after (info, li1))
     break;

   li2 = li1;
   li1 = li1->prev_line;
 }
      table->lcl_head = li2;
      info->prev_line = table->lcl_head->prev_line;
      table->lcl_head->prev_line = info;
    }
}
