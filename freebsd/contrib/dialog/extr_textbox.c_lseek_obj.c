
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ MY_OBJ ;





 int dlg_exiterr (char*,...) ;
 scalar_t__ lseek (int ,int ,int) ;

__attribute__((used)) static long
lseek_obj(MY_OBJ * obj, long offset, int mode)
{
    long fpos;
    if ((fpos = (long) lseek(obj->fd, (off_t) offset, mode)) == -1) {
 switch (mode) {
 default:
 case 130:
     dlg_exiterr("Cannot get file position");
     break;
 case 129:
     dlg_exiterr("Cannot seek to end of file");
     break;
 case 128:
     dlg_exiterr("Cannot set file position to %ld", offset);
     break;
 }
    }
    return fpos;
}
