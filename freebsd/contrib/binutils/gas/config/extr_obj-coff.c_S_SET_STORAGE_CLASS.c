
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_8__ {TYPE_3__* native; } ;
struct TYPE_5__ {int n_sclass; } ;
struct TYPE_6__ {TYPE_1__ syment; } ;
struct TYPE_7__ {TYPE_2__ u; } ;


 TYPE_4__* coffsymbol (int ) ;
 int symbol_get_bfdsym (int *) ;

int
S_SET_STORAGE_CLASS (symbolS *sym, int val)
{
  coffsymbol (symbol_get_bfdsym (sym))->native->u.syment.n_sclass = val;
  return val;
}
