
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef TYPE_1__* convert_optab ;
struct TYPE_4__ {int code; } ;


 TYPE_1__* new_convert_optab () ;

__attribute__((used)) static inline convert_optab
init_convert_optab (enum rtx_code code)
{
  convert_optab op = new_convert_optab ();
  op->code = code;
  return op;
}
