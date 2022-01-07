
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t in_buf; long fd_bytes_read; char* buf; void* begin_reached; int end_reached; } ;
typedef TYPE_1__ MY_OBJ ;


 int BUF_SIZE ;
 void* FALSE ;
 void* TRUE ;
 int dlg_exiterr (char*) ;
 long ftell_obj (TYPE_1__*) ;
 int lseek_cur (TYPE_1__*,int) ;
 int lseek_set (TYPE_1__*,long) ;
 int read_high (TYPE_1__*,int) ;
 void* tabize (TYPE_1__*,long,long*) ;

__attribute__((used)) static void
back_lines(MY_OBJ * obj, long n)
{
    int i;
    long fpos;
    long val_to_tabize;

    obj->begin_reached = FALSE;




    if (!obj->end_reached) {


 if (obj->in_buf == 0) {
     fpos = ftell_obj(obj);

     if (fpos > obj->fd_bytes_read) {






  if (fpos < BUF_SIZE / 2 + obj->fd_bytes_read) {

      lseek_set(obj, 0L);
      val_to_tabize = fpos - obj->fd_bytes_read;
  } else {
      lseek_cur(obj, -(BUF_SIZE / 2 + obj->fd_bytes_read));
      val_to_tabize = BUF_SIZE / 2;
  }
  read_high(obj, BUF_SIZE);

  obj->in_buf = tabize(obj, val_to_tabize, (long *) 0);

     } else {
  obj->begin_reached = TRUE;
  return;
     }
 }
 obj->in_buf--;
 if (obj->buf[obj->in_buf] != '\n')

     dlg_exiterr("Internal error in back_lines().");
    }


    for (i = 0; i < n; i++) {
 do {
     if (obj->in_buf == 0) {
  fpos = ftell_obj(obj);

  if (fpos > obj->fd_bytes_read) {

      if (fpos < BUF_SIZE / 2 + obj->fd_bytes_read) {

   lseek_set(obj, 0L);
   val_to_tabize = fpos - obj->fd_bytes_read;
      } else {
   lseek_cur(obj, -(BUF_SIZE / 2 + obj->fd_bytes_read));
   val_to_tabize = BUF_SIZE / 2;
      }
      read_high(obj, BUF_SIZE);

      obj->in_buf = tabize(obj, val_to_tabize, (long *) 0);

  } else {
      obj->begin_reached = TRUE;
      return;
  }
     }
 } while (obj->buf[--(obj->in_buf)] != '\n');
    }
    obj->in_buf++;
}
