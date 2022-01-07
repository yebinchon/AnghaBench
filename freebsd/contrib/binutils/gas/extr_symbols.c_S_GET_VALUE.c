
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int valueT ;
struct TYPE_10__ {scalar_t__ X_op; int X_add_number; TYPE_2__* X_add_symbol; } ;
struct TYPE_11__ {TYPE_1__ sy_value; int sy_resolved; } ;
typedef TYPE_2__ symbolS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;
 scalar_t__ O_constant ;
 scalar_t__ O_symbol ;
 int S_GET_NAME (TYPE_2__*) ;
 int S_IS_COMMON (TYPE_2__*) ;
 scalar_t__ S_IS_DEFINED (TYPE_2__*) ;
 scalar_t__ S_IS_WEAKREFR (TYPE_2__*) ;
 int _ (char*) ;
 int as_bad (int ,int ) ;
 int finalize_syms ;
 int resolve_symbol_value (TYPE_2__*) ;

valueT
S_GET_VALUE (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return resolve_symbol_value (s);

  if (!s->sy_resolved)
    {
      valueT val = resolve_symbol_value (s);
      if (!finalize_syms)
 return val;
    }
  if (S_IS_WEAKREFR (s))
    return S_GET_VALUE (s->sy_value.X_add_symbol);

  if (s->sy_value.X_op != O_constant)
    {
      if (! s->sy_resolved
   || s->sy_value.X_op != O_symbol
   || (S_IS_DEFINED (s) && ! S_IS_COMMON (s)))
 as_bad (_("attempt to get value of unresolved symbol `%s'"),
  S_GET_NAME (s));
    }
  return (valueT) s->sy_value.X_add_number;
}
