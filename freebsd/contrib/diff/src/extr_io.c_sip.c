
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
struct file_data {scalar_t__ desc; int bufsize; int eof; scalar_t__ buffered; void* buffer; int name; int stat; } ;
typedef scalar_t__ off_t ;


 scalar_t__ PTRDIFF_MAX ;
 int SEEK_CUR ;
 int STAT_BLOCKSIZE (int ) ;
 int binary_file_p (void*,scalar_t__) ;
 int buffer_lcm (int,int ,scalar_t__) ;
 int file_block_read (struct file_data*,int) ;
 int lseek (scalar_t__,scalar_t__,int ) ;
 int pfatal_with_name (int ) ;
 int set_binary_mode (scalar_t__,int) ;
 void* xmalloc (int) ;

__attribute__((used)) static bool
sip (struct file_data *current, bool skip_test)
{

  if (current->desc < 0)
    {

      current->bufsize = sizeof (word);
      current->buffer = xmalloc (current->bufsize);
    }
  else
    {
      current->bufsize = buffer_lcm (sizeof (word),
         STAT_BLOCKSIZE (current->stat),
         PTRDIFF_MAX - 2 * sizeof (word));
      current->buffer = xmalloc (current->bufsize);

      if (! skip_test)
 {


   bool was_binary = set_binary_mode (current->desc, 1);
   off_t buffered;
   file_block_read (current, current->bufsize);
   buffered = current->buffered;

   if (! was_binary)
     {





       if (lseek (current->desc, - buffered, SEEK_CUR) == -1)
  pfatal_with_name (current->name);
       set_binary_mode (current->desc, 0);
       current->buffered = 0;
       current->eof = 0;
     }

   return binary_file_p (current->buffer, buffered);
 }
    }

  current->buffered = 0;
  current->eof = 0;
  return 0;
}
