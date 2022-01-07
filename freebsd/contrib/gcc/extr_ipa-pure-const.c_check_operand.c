
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int funct_state ;


 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int check_decl (int ,int ,int) ;

__attribute__((used)) static void
check_operand (funct_state local,
        tree t, bool checking_write)
{
  if (!t) return;

  if (TREE_CODE (t) == VAR_DECL)
    check_decl (local, t, checking_write);
}
