
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cpp_reader ;
struct TYPE_6__ {int dont_read; int fd; scalar_t__ err_no; scalar_t__ buffer_valid; } ;
typedef TYPE_1__ _cpp_file ;


 int close (int) ;
 int open_file (TYPE_1__*) ;
 int open_file_failed (int *,TYPE_1__*,int ) ;
 int read_file_guts (int *,TYPE_1__*) ;

__attribute__((used)) static bool
read_file (cpp_reader *pfile, _cpp_file *file)
{

  if (file->buffer_valid)
    return 1;


  if (file->dont_read || file->err_no)
    return 0;

  if (file->fd == -1 && !open_file (file))
    {
      open_file_failed (pfile, file, 0);
      return 0;
    }

  file->dont_read = !read_file_guts (pfile, file);
  close (file->fd);
  file->fd = -1;

  return !file->dont_read;
}
