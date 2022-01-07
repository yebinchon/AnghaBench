
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* funct_state ;
struct TYPE_3__ {scalar_t__ pure_const_state; } ;


 int DECL_ATTRIBUTES (int ) ;
 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ DECL_INITIAL (int ) ;
 scalar_t__ IPA_CONST ;
 void* IPA_NEITHER ;
 void* IPA_PURE ;
 scalar_t__ TREE_PUBLIC (int ) ;
 scalar_t__ TREE_READONLY (int ) ;
 int TREE_STATIC (int ) ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;
 scalar_t__ lookup_attribute (char*,int ) ;

__attribute__((used)) static inline void
check_decl (funct_state local,
     tree t, bool checking_write)
{


  if (lookup_attribute ("used", DECL_ATTRIBUTES (t)))
    {
      local->pure_const_state = IPA_NEITHER;
      return;
    }



  if (TREE_THIS_VOLATILE (t))
    {
      local->pure_const_state = IPA_NEITHER;
      return;
    }


  if (!TREE_STATIC (t) && !DECL_EXTERNAL (t))
    return;




  if (checking_write)
    local->pure_const_state = IPA_NEITHER;

  if (DECL_EXTERNAL (t) || TREE_PUBLIC (t))
    {





      if (TREE_READONLY (t)
   && DECL_INITIAL (t)
   && is_gimple_min_invariant (DECL_INITIAL (t)))
 ;
      else
 {

   if (local->pure_const_state == IPA_CONST)
     local->pure_const_state = IPA_PURE;
 }
    }



  if (TREE_READONLY (t))
    return;


  if (local->pure_const_state == IPA_CONST)
    local->pure_const_state = IPA_PURE;
}
