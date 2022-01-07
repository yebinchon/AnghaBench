
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
dlg_find_index(const int *list, int limit, int to_find)
{
    int result;
    for (result = 0; result <= limit; ++result) {
 if (to_find == list[result]
     || result == limit
     || ((result < limit) && (to_find < list[result + 1]))) {
     break;
 }
    }
    return result;
}
