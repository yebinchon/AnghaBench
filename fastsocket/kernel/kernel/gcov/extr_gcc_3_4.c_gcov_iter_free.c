
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_iterator {int dummy; } ;


 int kfree (struct gcov_iterator*) ;

void gcov_iter_free(struct gcov_iterator *iter)
{
 kfree(iter);
}
