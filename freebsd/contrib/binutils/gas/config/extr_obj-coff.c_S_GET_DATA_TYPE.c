
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
struct TYPE_5__ {int n_type; } ;
struct TYPE_6__ {TYPE_1__ syment; } ;
struct TYPE_7__ {TYPE_2__ u; } ;


 TYPE_4__* coffsymbol (int ) ;
 int symbol_get_bfdsym (int *) ;

__attribute__((used)) static int
S_GET_DATA_TYPE (symbolS *sym)
{
  return coffsymbol (symbol_get_bfdsym (sym))->native->u.syment.n_type;
}
