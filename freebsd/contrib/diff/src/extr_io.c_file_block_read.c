
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {int eof; scalar_t__ buffered; int name; int desc; } ;


 scalar_t__ FILE_BUFFER (struct file_data*) ;
 size_t SIZE_MAX ;
 size_t block_read (int ,scalar_t__,size_t) ;
 int pfatal_with_name (int ) ;

void
file_block_read (struct file_data *current, size_t size)
{
  if (size && ! current->eof)
    {
      size_t s = block_read (current->desc,
        FILE_BUFFER (current) + current->buffered, size);
      if (s == SIZE_MAX)
 pfatal_with_name (current->name);
      current->buffered += s;
      current->eof = s < size;
    }
}
