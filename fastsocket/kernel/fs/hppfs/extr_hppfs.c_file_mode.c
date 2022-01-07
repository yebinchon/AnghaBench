
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;

__attribute__((used)) static int file_mode(int fmode)
{
 if (fmode == (FMODE_READ | FMODE_WRITE))
  return O_RDWR;
 if (fmode == FMODE_READ)
  return O_RDONLY;
 if (fmode == FMODE_WRITE)
  return O_WRONLY;
 return 0;
}
