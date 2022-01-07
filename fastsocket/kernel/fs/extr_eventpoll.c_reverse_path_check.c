
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tfile_check {int count; struct tfile_check* next; TYPE_1__** tfile_arr; } ;
struct TYPE_2__ {int file; } ;


 int EP_MAX_NESTS ;
 struct tfile_check base_tfile_check ;
 int current ;
 int ep_call_nested (int *,int ,int ,int ,int ,int ) ;
 int path_count_init () ;
 int poll_loop_ncalls ;
 int reverse_path_check_proc ;

__attribute__((used)) static int reverse_path_check(void)
{
 int length = 0;
 int error = 0;
 int i;
 struct tfile_check *tfile_check_iter = &base_tfile_check;


 while (tfile_check_iter) {
  for (i = 0; i < tfile_check_iter->count; i++) {
   length++;
   path_count_init();
   error = ep_call_nested(&poll_loop_ncalls, EP_MAX_NESTS,
     reverse_path_check_proc, tfile_check_iter->tfile_arr[i]->file,
     tfile_check_iter->tfile_arr[i]->file, current);
   if (error)
    return error;
  }
  tfile_check_iter = tfile_check_iter->next;
 }
 return error;
}
