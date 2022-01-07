
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int end_reached; int begin_reached; long page_length; long in_buf; long fd_bytes_read; int text; } ;
typedef TYPE_1__ MY_OBJ ;


 int BUF_SIZE ;
 int DLG_EXIT_CANCEL ;
 int DLG_EXIT_OK ;
 int FALSE ;
 int KEY_RESIZE ;
 int PAGE_LENGTH ;
 int PAGE_WIDTH ;
 int TRUE ;
 int back_lines (TYPE_1__*,long) ;
 int beep () ;
 int dialog_attr ;
 int dlg_attrset (int ,int ) ;
 long ftell_obj (TYPE_1__*) ;
 int get_search_term (int ,char*,int ,int ) ;
 int lseek_set (TYPE_1__*,long) ;
 int match_string (TYPE_1__*,char*) ;
 int read_high (TYPE_1__*,int ) ;
 int ungetch (int) ;

__attribute__((used)) static bool
perform_search(MY_OBJ * obj, int height, int width, int key, char *search_term)
{
    int dir;
    long tempinx;
    long fpos;
    int result;
    bool found;
    bool temp, temp1;
    bool moved = FALSE;


    dir = (key == '/' || key == 'n') ? 1 : 0;
    if (dir ? !obj->end_reached : !obj->begin_reached) {
 if (key == 'n' || key == 'N') {
     if (search_term[0] == '\0') {
  (void) beep();
  return FALSE;
     }

 } else if ((result = get_search_term(obj->text, search_term,
          PAGE_LENGTH,
          PAGE_WIDTH)) != DLG_EXIT_OK
     || search_term[0] == '\0') {
     dlg_attrset(obj->text, dialog_attr);
     back_lines(obj, obj->page_length);
     return TRUE;
 }

 tempinx = obj->in_buf;
 temp = obj->begin_reached;
 temp1 = obj->end_reached;
 fpos = ftell_obj(obj) - obj->fd_bytes_read;


 back_lines(obj, (dir
    ? obj->page_length - 1
    : obj->page_length + 1));
 if (dir) {
     while ((found = match_string(obj, search_term)) == FALSE) {
  if (obj->end_reached)
      break;
     }
 } else {
     while ((found = match_string(obj, search_term)) == FALSE) {
  if (obj->begin_reached)
      break;
  back_lines(obj, 2L);
     }
 }
 if (found == FALSE) {
     (void) beep();

     lseek_set(obj, fpos);

     read_high(obj, BUF_SIZE);

     obj->in_buf = tempinx;
     obj->begin_reached = temp;
     obj->end_reached = temp1;




     back_lines(obj, obj->page_length);
 } else {
     back_lines(obj, 1L);
 }

 dlg_attrset(obj->text, dialog_attr);
 moved = TRUE;
    } else {
 (void) beep();
    }
    return moved;
}
