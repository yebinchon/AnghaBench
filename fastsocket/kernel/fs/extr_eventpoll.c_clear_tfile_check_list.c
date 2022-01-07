
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfile_check {struct tfile_check* next; scalar_t__ count; } ;


 struct tfile_check base_tfile_check ;
 int clear_added_flag (struct tfile_check*) ;
 struct tfile_check* current_tfile_check ;
 int kfree (struct tfile_check*) ;

void clear_tfile_check_list(void)
{
 struct tfile_check *tfile_check_iter, *tmp;

 tfile_check_iter = base_tfile_check.next;
 base_tfile_check.next = ((void*)0);
 clear_added_flag(&base_tfile_check);
 base_tfile_check.count = 0;

 while (tfile_check_iter) {
  clear_added_flag(tfile_check_iter);
  tmp = tfile_check_iter;
  tfile_check_iter = tfile_check_iter->next;
  kfree(tmp);
 }
 current_tfile_check = &base_tfile_check;
}
