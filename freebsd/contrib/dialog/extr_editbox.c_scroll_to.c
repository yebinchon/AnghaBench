
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int beep () ;

__attribute__((used)) static bool
scroll_to(int pagesize, int rows, int *base_row, int *this_row, int target)
{
    bool result = FALSE;

    if (target < *base_row) {
 if (target < 0) {
     if (*base_row == 0 && *this_row == 0) {
  beep();
     } else {
  *this_row = 0;
  *base_row = 0;
  result = TRUE;
     }
 } else {
     *this_row = target;
     *base_row = target;
     result = TRUE;
 }
    } else if (target >= rows) {
 if (*this_row < rows - 1) {
     *this_row = rows - 1;
     *base_row = rows - 1;
     result = TRUE;
 } else {
     beep();
 }
    } else if (target >= *base_row + pagesize) {
 *this_row = target;
 *base_row = target;
 result = TRUE;
    } else {
 *this_row = target;
 result = FALSE;
    }
    if (pagesize < rows) {
 if (*base_row + pagesize >= rows) {
     *base_row = rows - pagesize;
 }
    } else {
 *base_row = 0;
    }
    return result;
}
