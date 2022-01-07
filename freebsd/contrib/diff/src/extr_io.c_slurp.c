
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int word ;
struct TYPE_2__ {size_t st_size; int st_mode; } ;
struct file_data {scalar_t__ desc; size_t bufsize; size_t buffered; void* buffer; TYPE_1__ stat; } ;


 size_t PTRDIFF_MAX ;
 scalar_t__ S_ISREG (int ) ;
 int file_block_read (struct file_data*,size_t) ;
 int xalloc_die () ;
 void* xrealloc (void*,size_t) ;

__attribute__((used)) static void
slurp (struct file_data *current)
{
  size_t cc;

  if (current->desc < 0)
    {

      return;
    }

  if (S_ISREG (current->stat.st_mode))
    {





      size_t file_size = current->stat.st_size;
      cc = file_size + 2 * sizeof (word) - file_size % sizeof (word);
      if (file_size != current->stat.st_size || cc < file_size
   || PTRDIFF_MAX <= cc)
 xalloc_die ();

      if (current->bufsize < cc)
 {
   current->bufsize = cc;
   current->buffer = xrealloc (current->buffer, cc);
 }





      if (current->buffered <= file_size)
 {
   file_block_read (current, file_size + 1 - current->buffered);
   if (current->buffered <= file_size)
     return;
 }
    }




  file_block_read (current, current->bufsize - current->buffered);

  if (current->buffered)
    {
      while (current->buffered == current->bufsize)
 {
   if (PTRDIFF_MAX / 2 - sizeof (word) < current->bufsize)
     xalloc_die ();
   current->bufsize *= 2;
   current->buffer = xrealloc (current->buffer, current->bufsize);
   file_block_read (current, current->bufsize - current->buffered);
 }



      cc = current->buffered + 2 * sizeof (word);
      current->bufsize = cc - cc % sizeof (word);
      current->buffer = xrealloc (current->buffer, current->bufsize);
    }
}
