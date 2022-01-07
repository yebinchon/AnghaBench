
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item_no; scalar_t__ items; int * list; } ;
typedef int MY_DATA ;
typedef TYPE_1__ ALL_DATA ;


 int TRACE (char*) ;
 scalar_t__ myItem (int *,int) ;
 int mySide (int) ;

__attribute__((used)) static int
row2index(ALL_DATA * all, int row, int selected)
{
    MY_DATA *data = all->list + selected;
    int result = -1;
    int n;
    for (n = 0; n < all->item_no; ++n) {
 TRACE(("!... row %d: %p vs choice %d: %p\n",
        row, myItem(data, row),
        n, all->items + n));
 if (myItem(data, row) == all->items + n) {
     result = n;
     break;
 }
    }
    TRACE(("! row2index(row %d, %s) = %d\n", row, mySide(selected), result));
    return result;
}
