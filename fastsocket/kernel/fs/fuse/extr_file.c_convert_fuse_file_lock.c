
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_lock {int type; int pid; int end; int start; } ;
struct file_lock {int fl_type; int fl_pid; int fl_end; int fl_start; } ;


 int EIO ;



 int OFFSET_MAX ;

__attribute__((used)) static int convert_fuse_file_lock(const struct fuse_file_lock *ffl,
      struct file_lock *fl)
{
 switch (ffl->type) {
 case 129:
  break;

 case 130:
 case 128:
  if (ffl->start > OFFSET_MAX || ffl->end > OFFSET_MAX ||
      ffl->end < ffl->start)
   return -EIO;

  fl->fl_start = ffl->start;
  fl->fl_end = ffl->end;
  fl->fl_pid = ffl->pid;
  break;

 default:
  return -EIO;
 }
 fl->fl_type = ffl->type;
 return 0;
}
