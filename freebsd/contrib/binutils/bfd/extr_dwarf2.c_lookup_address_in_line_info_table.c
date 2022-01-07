
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_info_table {struct line_info* last_line; } ;
struct line_info {scalar_t__ address; char* filename; unsigned int line; struct line_info* prev_line; int end_sequence; } ;
struct arange {scalar_t__ low; struct arange* next; } ;
struct funcinfo {struct arange arange; } ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_boolean ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

__attribute__((used)) static bfd_boolean
lookup_address_in_line_info_table (struct line_info_table *table,
       bfd_vma addr,
       struct funcinfo *function,
       const char **filename_ptr,
       unsigned int *linenumber_ptr)
{

  struct line_info* next_line = table->last_line;
  struct line_info* each_line = ((void*)0);
  *filename_ptr = ((void*)0);

  if (!next_line)
    return FALSE;

  each_line = next_line->prev_line;


  if (addr > next_line->address)
    each_line = ((void*)0);


  while (each_line && next_line)
    {



      bfd_boolean addr_match = FALSE;
      if (each_line->address <= addr && addr < next_line->address)
 {
   addr_match = TRUE;






   if (function != ((void*)0))
     {
       bfd_vma lowest_pc;
       struct arange *arange;


       lowest_pc = function->arange.low;
       for (arange = &function->arange;
     arange;
     arange = arange->next)
  {
    if (function->arange.low < lowest_pc)
      lowest_pc = function->arange.low;
  }

       if (addr >= lowest_pc
    && each_line->address < lowest_pc
    && next_line->address > lowest_pc)
  {
    *filename_ptr = next_line->filename;
    *linenumber_ptr = next_line->line;
  }
       else
  {
    *filename_ptr = each_line->filename;
    *linenumber_ptr = each_line->line;
  }
     }
   else
     {
       *filename_ptr = each_line->filename;
       *linenumber_ptr = each_line->line;
     }
 }

      if (addr_match && !each_line->end_sequence)
 return TRUE;

      next_line = each_line;
      each_line = each_line->prev_line;
    }







  if (*filename_ptr == ((void*)0) && function != ((void*)0))
    {
      *filename_ptr = next_line->filename;
      *linenumber_ptr = next_line->line;
      return TRUE;
    }

  return FALSE;
}
