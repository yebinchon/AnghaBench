
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int REAL_VALUE_TYPE ;


 int MODE_HAS_INFINITIES (int ) ;
 int TYPE_MODE (int ) ;
 int build_real (int ,int ) ;
 int pedwarn (char*) ;
 int real_inf (int *) ;

__attribute__((used)) static tree
fold_builtin_inf (tree type, int warn)
{
  REAL_VALUE_TYPE real;
  if (!MODE_HAS_INFINITIES (TYPE_MODE (type)) && warn)
    pedwarn ("target format does not support infinity");

  real_inf (&real);
  return build_real (type, real);
}
