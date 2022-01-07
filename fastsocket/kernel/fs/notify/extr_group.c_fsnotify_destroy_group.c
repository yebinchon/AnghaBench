
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int num_marks; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int fsnotify_clear_marks_by_group (struct fsnotify_group*) ;
 int fsnotify_final_destroy_group (struct fsnotify_group*) ;

__attribute__((used)) static void fsnotify_destroy_group(struct fsnotify_group *group)
{

 fsnotify_clear_marks_by_group(group);


 if (atomic_dec_and_test(&group->num_marks))
  fsnotify_final_destroy_group(group);
}
