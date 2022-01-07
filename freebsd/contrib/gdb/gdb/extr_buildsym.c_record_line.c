
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subfile {int line_vector_length; struct linetable* line_vector; } ;
struct linetable_entry {int line; int pc; } ;
struct linetable {int nitems; struct linetable_entry* item; } ;
typedef int CORE_ADDR ;


 int ADDR_BITS_REMOVE (int ) ;
 int INITIAL_LINE_VECTOR_LENGTH ;
 int have_line_numbers ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

void
record_line (struct subfile *subfile, int line, CORE_ADDR pc)
{
  struct linetable_entry *e;


  if (line == 0xffff)
    {
      return;
    }


  if (!subfile->line_vector)
    {
      subfile->line_vector_length = INITIAL_LINE_VECTOR_LENGTH;
      subfile->line_vector = (struct linetable *)
 xmalloc (sizeof (struct linetable)
    + subfile->line_vector_length * sizeof (struct linetable_entry));
      subfile->line_vector->nitems = 0;
      have_line_numbers = 1;
    }

  if (subfile->line_vector->nitems + 1 >= subfile->line_vector_length)
    {
      subfile->line_vector_length *= 2;
      subfile->line_vector = (struct linetable *)
 xrealloc ((char *) subfile->line_vector,
    (sizeof (struct linetable)
     + (subfile->line_vector_length
        * sizeof (struct linetable_entry))));
    }

  e = subfile->line_vector->item + subfile->line_vector->nitems++;
  e->line = line;
  e->pc = ADDR_BITS_REMOVE(pc);
}
