
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 char* FOPEN_RB ;
 char* FOPEN_RUB ;
 int F_GETFL ;
 int O_ACCMODE ;



 int abort () ;
 int bfd_error_system_call ;
 int * bfd_fopen (char const*,char const*,char const*,int) ;
 int bfd_set_error (int ) ;
 int fcntl (int,int ,int *) ;

bfd *
bfd_fdopenr (const char *filename, const char *target, int fd)
{
  const char *mode;





  mode = FOPEN_RUB;
  return bfd_fopen (filename, target, mode, fd);
}
