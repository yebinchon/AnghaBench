
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int list; } ;
typedef struct list_head LIST_HEAD ;


 unsigned int TERMS_CNT ;
 int list_add_tail (int *,struct list_head*) ;
 TYPE_1__* test_terms ;

__attribute__((used)) static struct list_head *test_terms_list(void)
{
 static LIST_HEAD(terms);
 unsigned int i;

 for (i = 0; i < TERMS_CNT; i++)
  list_add_tail(&test_terms[i].list, &terms);

 return &terms;
}
