
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int f_mode; int f_flags; } ;


 int FILE__APPEND ;
 int FILE__IOCTL ;
 int FILE__READ ;
 int FILE__WRITE ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int O_APPEND ;

__attribute__((used)) static inline u32 file_to_av(struct file *file)
{
 u32 av = 0;

 if (file->f_mode & FMODE_READ)
  av |= FILE__READ;
 if (file->f_mode & FMODE_WRITE) {
  if (file->f_flags & O_APPEND)
   av |= FILE__APPEND;
  else
   av |= FILE__WRITE;
 }
 if (!av) {



  av = FILE__IOCTL;
 }

 return av;
}
