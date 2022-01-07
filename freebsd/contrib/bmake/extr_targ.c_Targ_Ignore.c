
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ GNode ;
typedef int Boolean ;


 int FALSE ;
 int OP_IGNORE ;
 int TRUE ;
 scalar_t__ ignoreErrors ;

Boolean
Targ_Ignore(GNode *gn)
{
    if (ignoreErrors || gn->type & OP_IGNORE) {
 return (TRUE);
    } else {
 return (FALSE);
    }
}
