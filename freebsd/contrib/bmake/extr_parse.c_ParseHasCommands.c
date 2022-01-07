
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int commands; } ;
typedef TYPE_1__ GNode ;


 int Lst_IsEmpty (int ) ;
 int OP_HAS_COMMANDS ;

__attribute__((used)) static void
ParseHasCommands(void *gnp)
{
    GNode *gn = (GNode *)gnp;
    if (!Lst_IsEmpty(gn->commands)) {
 gn->type |= OP_HAS_COMMANDS;
    }
}
