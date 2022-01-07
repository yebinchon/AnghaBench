
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 unsigned int VAR_COUNT ;
 scalar_t__ dlg_strcmp (int ,char*) ;
 TYPE_1__* vars ;

__attribute__((used)) static int
find_vars(char *name)
{
    int result = -1;
    unsigned i;

    for (i = 0; i < VAR_COUNT; i++) {
 if (dlg_strcmp(vars[i].name, name) == 0) {
     result = (int) i;
     break;
 }
    }
    return result;
}
