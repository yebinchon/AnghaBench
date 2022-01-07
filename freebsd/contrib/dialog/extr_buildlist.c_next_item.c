
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * list; } ;
typedef int MY_DATA ;
typedef TYPE_1__ ALL_DATA ;


 int TRACE (char*) ;
 int index2row (TYPE_1__*,int,int) ;
 scalar_t__ myItem (int *,int) ;
 int mySide (int) ;
 int row2index (TYPE_1__*,int,int) ;

__attribute__((used)) static int
next_item(ALL_DATA * all, int choice, int selected)
{
    MY_DATA *data = all->list + selected;
    int result = choice;
    int row = index2row(all, choice, selected);
    TRACE(("! given item %d, testing next-item on row %d\n", choice, row + 1));
    if (myItem(data, row + 1)) {
 result = row2index(all, row + 1, selected);
    }
    TRACE(("! next_item(%d, %s) ->%d\n", choice, mySide(selected), result));
    return result;
}
