
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int HOST_WIDE_INT ;


 scalar_t__ IS_FAKE_BASE_TYPE (int ) ;
 int TYPE_CONTEXT (int ) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (int ) ;
 int c_common_get_alias_set (int ) ;
 int get_alias_set (int ) ;

HOST_WIDE_INT
cxx_get_alias_set (tree t)
{
  if (IS_FAKE_BASE_TYPE (t))


    return get_alias_set (TYPE_CONTEXT (t));


  if (TYPE_PTRMEMFUNC_P (t))
    return 0;

  return c_common_get_alias_set (t);
}
