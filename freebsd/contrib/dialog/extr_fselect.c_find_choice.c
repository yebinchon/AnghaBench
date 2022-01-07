
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int choice; int length; char** data; } ;
typedef TYPE_1__ LIST ;


 int Value (char) ;
 int keep_visible (TYPE_1__*) ;

__attribute__((used)) static int
find_choice(char *target, LIST * list)
{
    int n;
    int choice = list->choice;
    int len_1, len_2, cmp_1, cmp_2;

    if (*target == 0) {
 list->choice = 0;
    } else {




 len_1 = 0;
 cmp_1 = 256;
 for (n = 0; n < list->length; n++) {
     char *a = target;
     char *b = list->data[n];

     len_2 = 0;
     while ((*a != 0) && (*b != 0) && (*a == *b)) {
  a++;
  b++;
  len_2++;
     }
     cmp_2 = Value(*a) - Value(*b);
     if (cmp_2 < 0)
  cmp_2 = -cmp_2;
     if ((len_2 > len_1)
  || (len_1 == len_2 && cmp_2 < cmp_1)) {
  len_1 = len_2;
  cmp_1 = cmp_2;
  list->choice = n;
     }
 }
    }
    if (choice != list->choice) {
 keep_visible(list);
    }
    return (choice != list->choice);
}
