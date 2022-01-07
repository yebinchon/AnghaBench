
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* optab ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_4__ {int code; } ;


 TYPE_1__* new_optab () ;

__attribute__((used)) static inline optab
init_optabv (enum rtx_code code)
{
  optab op = new_optab ();
  op->code = code;
  return op;
}
