
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int is_file_epoll (struct file*) ;

int is_file_epoll_export(struct file *f)
{
 return is_file_epoll(f);
}
