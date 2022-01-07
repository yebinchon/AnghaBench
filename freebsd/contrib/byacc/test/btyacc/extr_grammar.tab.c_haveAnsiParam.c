
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* first; } ;
struct TYPE_5__ {TYPE_1__* declarator; struct TYPE_5__* next; } ;
struct TYPE_4__ {scalar_t__ func_def; } ;
typedef TYPE_2__ Parameter ;


 int FALSE ;
 scalar_t__ FUNC_ANSI ;
 int TRUE ;
 TYPE_3__* func_params ;

__attribute__((used)) static int
haveAnsiParam (void)
{
    Parameter *p;
    if (func_params != 0) {
 for (p = func_params->first; p != 0; p = p->next) {
     if (p->declarator->func_def == FUNC_ANSI) {
  return TRUE;
     }
 }
    }
    return FALSE;
}
