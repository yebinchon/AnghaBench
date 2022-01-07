
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
typedef scalar_t__ off_t ;
typedef int cpp_reader ;
struct TYPE_5__ {scalar_t__ st_size; int st_mode; } ;
struct TYPE_4__ {int buffer_valid; TYPE_3__ st; int buffer; int path; int fd; } ;
typedef TYPE_1__ _cpp_file ;


 int CPP_DL_ERROR ;
 int CPP_DL_WARNING ;
 int CPP_OPTION (int *,int ) ;
 int SEEK_CUR ;
 scalar_t__ SSIZE_MAX ;
 scalar_t__ STAT_SIZE_RELIABLE (TYPE_3__) ;
 scalar_t__ S_ISBLK (int ) ;
 int S_ISREG (int ) ;
 int XNEWVEC (int,int) ;
 int XRESIZEVEC (int,int,int) ;
 int _cpp_convert_input (int *,int ,int,int,int,int*) ;
 int buf ;
 int cpp_errno (int *,int ,int ) ;
 int cpp_error (int *,int ,char*,int ) ;
 int input_charset ;
 scalar_t__ lseek (int ,int ,int ) ;
 int read (int ,int,int) ;
 int uchar ;

__attribute__((used)) static bool
read_file_guts (cpp_reader *pfile, _cpp_file *file)
{
  ssize_t size, total, count;
  off_t offset;
  uchar *buf;
  bool regular;

  if (S_ISBLK (file->st.st_mode))
    {
      cpp_error (pfile, CPP_DL_ERROR, "%s is a block device", file->path);
      return 0;
    }

  regular = S_ISREG (file->st.st_mode);
  if (regular)
    {
      if (file->st.st_size > SSIZE_MAX)
 {
   cpp_error (pfile, CPP_DL_ERROR, "%s is too large", file->path);
   return 0;
 }

      size = file->st.st_size;

      if ((offset = lseek(file->fd, 0, SEEK_CUR)) < 0)
 {
   cpp_error (pfile, CPP_DL_ERROR, "%s has no current position",
     file->path);
   return 0;
 }
      else if (offset > SSIZE_MAX || (ssize_t)offset > size)
 {
   cpp_error (pfile, CPP_DL_ERROR, "current position of %s is too large",
     file->path);
   return 0;
 }

      size -= (ssize_t)offset;
    }
  else



    size = 8 * 1024;

  buf = XNEWVEC (uchar, size + 1);
  total = 0;
  while ((count = read (file->fd, buf + total, size - total)) > 0)
    {
      total += count;

      if (total == size)
 {
   if (regular)
     break;
   size *= 2;
   buf = XRESIZEVEC (uchar, buf, size + 1);
 }
    }

  if (count < 0)
    {
      cpp_errno (pfile, CPP_DL_ERROR, file->path);
      return 0;
    }

  if (regular && total != size && STAT_SIZE_RELIABLE (file->st))
    cpp_error (pfile, CPP_DL_WARNING,
        "%s is shorter than expected", file->path);

  file->buffer = _cpp_convert_input (pfile, CPP_OPTION (pfile, input_charset),
         buf, size, total, &file->st.st_size);
  file->buffer_valid = 1;

  return 1;
}
