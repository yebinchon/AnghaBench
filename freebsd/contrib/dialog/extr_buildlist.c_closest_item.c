
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int item_no; TYPE_1__* items; } ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_2__ ALL_DATA ;


 int TRACE (char*) ;
 int mySide (int) ;

__attribute__((used)) static int
closest_item(ALL_DATA * all, int choice, int selected)
{
    int prev = choice;
    int next = choice;
    int result = choice;
    int n;

    for (n = choice; n >= 0; --n) {
 if ((all->items[n].state != 0) == selected) {
     prev = n;
     break;
 }
    }
    for (n = choice; n < all->item_no; ++n) {
 if ((all->items[n].state != 0) == selected) {
     next = n;
     break;
 }
    }
    if (prev != choice) {
 result = prev;
 if (next != choice) {
     if ((choice - prev) > (next - choice)) {
  result = next;
     }
 }
    } else if (next != choice) {
 result = next;
    }
    TRACE(("! XXX closest item choice %d, %s = %d\n",
    choice, mySide(selected), result));
    return result;
}
