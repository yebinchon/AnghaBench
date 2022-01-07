
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_9__ {TYPE_7__* p; } ;
struct TYPE_10__ {TYPE_1__ x_endndx; } ;
struct TYPE_11__ {TYPE_2__ x_fcn; } ;
struct TYPE_12__ {TYPE_3__ x_fcnary; } ;
struct TYPE_13__ {TYPE_4__ x_sym; } ;
struct TYPE_14__ {TYPE_5__ auxent; } ;
struct TYPE_15__ {int fix_end; TYPE_6__ u; } ;
typedef TYPE_7__ combined_entry_type ;
struct TYPE_16__ {TYPE_7__* native; } ;


 TYPE_8__* coffsymbol (int ) ;
 int symbol_get_bfdsym (int *) ;

void
SA_SET_SYM_ENDNDX (symbolS *sym, symbolS *val)
{
  combined_entry_type *entry, *p;

  entry = &coffsymbol (symbol_get_bfdsym (sym))->native[1];
  p = coffsymbol (symbol_get_bfdsym (val))->native;
  entry->u.auxent.x_sym.x_fcnary.x_fcn.x_endndx.p = p;
  entry->fix_end = 1;
}
