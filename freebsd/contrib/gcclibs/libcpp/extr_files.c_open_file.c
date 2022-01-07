
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int st_mode; } ;
struct TYPE_4__ {char* path; int fd; scalar_t__ err_no; TYPE_3__ st; } ;
typedef TYPE_1__ _cpp_file ;


 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int O_BINARY ;
 int O_NOCTTY ;
 int O_RDONLY ;
 int S_ISDIR (int ) ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ fstat (int,TYPE_3__*) ;
 int open (char*,int,int) ;
 int set_stdin_to_binary_mode () ;

__attribute__((used)) static bool
open_file (_cpp_file *file)
{
  if (file->path[0] == '\0')
    {
      file->fd = 0;
      set_stdin_to_binary_mode ();
    }
  else
    file->fd = open (file->path, O_RDONLY | O_NOCTTY | O_BINARY, 0666);

  if (file->fd != -1)
    {
      if (fstat (file->fd, &file->st) == 0)
 {
   if (!S_ISDIR (file->st.st_mode))
     {
       file->err_no = 0;
       return 1;
     }



   errno = ENOENT;
 }

      close (file->fd);
      file->fd = -1;
    }
  else if (errno == ENOTDIR)
    errno = ENOENT;

  file->err_no = errno;

  return 0;
}
