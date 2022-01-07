
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int win; } ;
typedef TYPE_1__ LIST ;


 int TRUE ;
 int data_of (TYPE_1__*) ;



__attribute__((used)) static bool
usable_state(int state, LIST * dirs, LIST * files)
{
    bool result;

    switch (state) {
    case 129:
 result = (dirs->win != 0) && (data_of(dirs) != 0);
 break;
    case 128:
 result = (files->win != 0) && (data_of(files) != 0);
 break;
    default:
 result = TRUE;
 break;
    }
    return result;
}
