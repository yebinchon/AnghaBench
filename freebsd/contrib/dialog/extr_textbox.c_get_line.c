
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* buf; size_t in_buf; long file_size; char* line; scalar_t__ end_reached; } ;
typedef TYPE_1__ MY_OBJ ;


 int BUF_SIZE ;
 scalar_t__ FALSE ;
 int MAX_LEN ;
 scalar_t__ TRUE ;
 long ftell_obj (TYPE_1__*) ;
 int read_high (TYPE_1__*,int ) ;

__attribute__((used)) static char *
get_line(MY_OBJ * obj)
{
    int i = 0;
    long fpos;

    obj->end_reached = FALSE;
    while (obj->buf[obj->in_buf] != '\n') {
 if (obj->buf[obj->in_buf] == '\0') {
     fpos = ftell_obj(obj);

     if (fpos < obj->file_size) {



  read_high(obj, BUF_SIZE);
  obj->in_buf = 0;
     } else {
  if (!obj->end_reached)
      obj->end_reached = TRUE;
  break;
     }
 } else if (i < MAX_LEN)
     obj->line[i++] = obj->buf[obj->in_buf++];
 else {
     if (i == MAX_LEN)
  obj->line[i++] = '\0';
     obj->in_buf++;
 }
    }
    if (i <= MAX_LEN)
 obj->line[i] = '\0';
    if (!obj->end_reached)
 obj->in_buf++;

    return obj->line;
}
