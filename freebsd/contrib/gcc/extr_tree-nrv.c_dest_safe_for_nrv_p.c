
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* subvar_t ;
struct TYPE_3__ {int var; struct TYPE_3__* next; } ;




 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;

 TYPE_1__* get_subvars_for_var (int ) ;
 int is_call_clobbered (int ) ;

__attribute__((used)) static bool
dest_safe_for_nrv_p (tree dest)
{
  switch (TREE_CODE (dest))
    {
      case 128:
 {
   subvar_t subvar;
   if (is_call_clobbered (dest))
     return 0;
   for (subvar = get_subvars_for_var (dest);
        subvar;
        subvar = subvar->next)
     if (is_call_clobbered (subvar->var))
       return 0;
   return 1;
 }
      case 130:
      case 129:
 return dest_safe_for_nrv_p (TREE_OPERAND (dest, 0));
      default:
 return 0;
    }
}
