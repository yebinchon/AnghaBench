
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fsnotify_group {int dummy; } ;
struct file {struct fsnotify_group* private_data; } ;


 int fsnotify_clear_marks_by_group (struct fsnotify_group*) ;
 int fsnotify_put_group (struct fsnotify_group*) ;

__attribute__((used)) static int inotify_release(struct inode *ignored, struct file *file)
{
 struct fsnotify_group *group = file->private_data;

 fsnotify_clear_marks_by_group(group);


 fsnotify_put_group(group);

 return 0;
}
