
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfile_check {scalar_t__ count; struct tfile_check* next; struct epoll_filefd** tfile_arr; } ;
struct epoll_filefd {int added; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NUM_FILES ;
 struct tfile_check* current_tfile_check ;
 struct tfile_check* kmalloc (int,int ) ;

__attribute__((used)) static int add_to_tfile_check(struct epoll_filefd *ffd)
{
 struct tfile_check *new;

 if (current_tfile_check->count < NUM_FILES) {
  current_tfile_check->tfile_arr[current_tfile_check->count++] = ffd;
  ffd->added = 1;
  return 0;
 }
 new = kmalloc(sizeof(struct tfile_check), GFP_KERNEL);
 if (!new)
  return -ENOMEM;
 new->count = 0;
 new->next = ((void*)0);
 new->tfile_arr[new->count++] = ffd;
 ffd->added = 1;
 current_tfile_check->next = new;
 current_tfile_check = new;

 return 0;
}
