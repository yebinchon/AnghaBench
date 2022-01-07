
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ALL_DATA ;


 int TRACE (char*) ;
 int index2row (int *,int,int) ;
 int mySide (int) ;
 int row2index (int *,int,int) ;

__attribute__((used)) static int
prev_item(ALL_DATA * all, int choice, int selected)
{
    int result = choice;
    int row = index2row(all, choice, selected);
    if (row > 0) {
 row--;
 result = row2index(all, row, selected);
    }
    TRACE(("! prev_item choice %d, %s = %d\n", choice, mySide(selected), result));
    return result;
}
