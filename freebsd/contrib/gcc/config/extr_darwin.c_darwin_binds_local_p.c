
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DARWIN_VTABLE_P (int ) ;
 scalar_t__ TARGET_KEXTABI ;
 int default_binds_local_p_1 (int ,int) ;

bool
darwin_binds_local_p (tree decl)
{
  return default_binds_local_p_1 (decl,
      TARGET_KEXTABI && DARWIN_VTABLE_P (decl));
}
