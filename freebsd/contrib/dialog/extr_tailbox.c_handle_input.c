
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_4__ {int * input; } ;
struct TYPE_5__ {scalar_t__ last_pos; TYPE_1__ obj; } ;
typedef TYPE_2__ MY_OBJ ;
typedef int FILE ;
typedef int DIALOG_CALLBACK ;


 int TRUE ;
 int fileno (int *) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int repaint_text (TYPE_2__*) ;

__attribute__((used)) static bool
handle_input(DIALOG_CALLBACK * cb)
{
    MY_OBJ *obj = (MY_OBJ *) cb;
    FILE *fp = obj->obj.input;
    struct stat sb;

    if (fstat(fileno(fp), &sb) == 0
 && sb.st_size != obj->last_pos) {
 repaint_text(obj);
    }

    return TRUE;
}
