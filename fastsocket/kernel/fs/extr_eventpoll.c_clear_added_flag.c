
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tfile_check {int count; TYPE_1__** tfile_arr; } ;
struct TYPE_2__ {scalar_t__ added; } ;



__attribute__((used)) static void clear_added_flag(struct tfile_check *tfile_check_iter)
{
 int i;

 for (i = 0; i < tfile_check_iter->count; i++)
  tfile_check_iter->tfile_arr[i]->added = 0;
}
