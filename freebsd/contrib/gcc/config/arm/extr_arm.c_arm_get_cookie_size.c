
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TARGET_AAPCS_BASED ;
 int build_int_cst (int ,int) ;
 int default_cxx_get_cookie_size (int ) ;
 int sizetype ;

__attribute__((used)) static tree
arm_get_cookie_size (tree type)
{
  tree size;

  if (!TARGET_AAPCS_BASED)
    return default_cxx_get_cookie_size (type);

  size = build_int_cst (sizetype, 8);
  return size;
}
