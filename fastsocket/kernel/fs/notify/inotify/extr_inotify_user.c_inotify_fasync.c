
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fa; } ;
struct fsnotify_group {TYPE_1__ inotify_data; } ;
struct file {struct fsnotify_group* private_data; } ;


 int EIO ;
 scalar_t__ fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int inotify_fasync(int fd, struct file *file, int on)
{
 struct fsnotify_group *group = file->private_data;

 return fasync_helper(fd, file, on, &group->inotify_data.fa) >= 0 ? 0 : -EIO;
}
