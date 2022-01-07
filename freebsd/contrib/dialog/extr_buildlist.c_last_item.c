
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * list; } ;
typedef int MY_DATA ;
typedef TYPE_1__ ALL_DATA ;


 int TRACE (char*) ;
 scalar_t__ myItem (int *,int) ;
 int mySide (int) ;
 int row2index (TYPE_1__*,int,int) ;

__attribute__((used)) static int
last_item(ALL_DATA * all, int selected)
{
    MY_DATA *data = all->list + selected;
    int result = -1;
    int n;

    for (n = 0; myItem(data, n) != 0; ++n) {
 result = n;
    }
    if (result >= 0) {
 result = row2index(all, result, selected);
    }
    TRACE(("! last_item %s = %d\n", mySide(selected), result));
    return result;
}
