
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIALOG_FORMITEM ;


 int FALSE ;
 int TRUE ;
 int is_readonly (int *) ;

__attribute__((used)) static int
set_choice(DIALOG_FORMITEM item[], int choice, int item_no, bool * noneditable)
{
    int result = -1;
    int i;

    *noneditable = FALSE;
    if (!is_readonly(&item[choice])) {
 result = choice;
    } else {
 for (i = 0; i < item_no; i++) {
     if (!is_readonly(&(item[i]))) {
  result = i;
  break;
     }
 }
 if (result < 0) {
     *noneditable = TRUE;
     result = 0;
 }
    }
    return result;
}
