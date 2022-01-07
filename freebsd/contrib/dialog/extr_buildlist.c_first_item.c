
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item_no; int * items; int * list; } ;
typedef int MY_DATA ;
typedef TYPE_1__ ALL_DATA ;


 int TRACE (char*) ;
 int * myItem (int *,int ) ;
 int mySide (int) ;

__attribute__((used)) static int
first_item(ALL_DATA * all, int selected)
{
    MY_DATA *data = all->list + selected;
    int result = -1;
    int n;

    if (myItem(data, 0) != 0) {
 for (n = 0; n < all->item_no; ++n) {
     if (myItem(data, 0) == &all->items[n]) {
  result = n;
  break;
     }
 }
    }
    TRACE(("! first_item %s = %d\n", mySide(selected), result));
    return result;
}
