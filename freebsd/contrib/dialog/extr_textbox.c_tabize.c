
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {long tab_len; } ;
struct TYPE_9__ {int tab_correct; } ;
struct TYPE_8__ {long fd_bytes_read; int fd; } ;
typedef TYPE_1__ MY_OBJ ;


 char TAB ;
 TYPE_7__ dialog_state ;
 TYPE_6__ dialog_vars ;
 int dlg_exiterr (char*) ;
 long find_first (TYPE_1__*,char*,long) ;
 int free (char*) ;
 long ftell_obj (TYPE_1__*) ;
 int lseek_set (TYPE_1__*,long) ;
 int read (int ,char*,size_t) ;
 char* xalloc (size_t) ;

__attribute__((used)) static long
tabize(MY_OBJ * obj, long val, long *first_pos)
{
    long fpos;
    long i, count, begin_line;
    char *buftab;

    if (!dialog_vars.tab_correct)
 return val;

    fpos = ftell_obj(obj);

    lseek_set(obj, fpos - obj->fd_bytes_read);


    buftab = xalloc((size_t) val + 1);

    if ((read(obj->fd, buftab, (size_t) val)) == -1)
 dlg_exiterr("Error reading file in tabize().");

    begin_line = count = 0;
    if (first_pos != 0)
 *first_pos = 0;

    for (i = 0; i < val; i++) {
 if ((first_pos != 0) && (count >= val)) {
     *first_pos = find_first(obj, buftab, i);
     break;
 }
 if (buftab[i] == TAB)
     count += dialog_state.tab_len
  - ((count - begin_line) % dialog_state.tab_len);
 else if (buftab[i] == '\n') {
     count++;
     begin_line = count;
 } else
     count++;
    }

    lseek_set(obj, fpos);
    free(buftab);
    return count;
}
