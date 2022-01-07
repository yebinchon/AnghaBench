
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum vect_var_kind { ____Placeholder_vect_var_kind } vect_var_kind ;


 char const* concat (char const*,char const*,int *) ;
 int create_tmp_var (int ,char const*) ;
 int gcc_unreachable () ;




__attribute__((used)) static tree
vect_get_new_vect_var (tree type, enum vect_var_kind var_kind, const char *name)
{
  const char *prefix;
  tree new_vect_var;

  switch (var_kind)
  {
  case 128:
    prefix = "vect_";
    break;
  case 129:
    prefix = "stmp_";
    break;
  case 130:
    prefix = "vect_p";
    break;
  default:
    gcc_unreachable ();
  }

  if (name)
    new_vect_var = create_tmp_var (type, concat (prefix, name, ((void*)0)));
  else
    new_vect_var = create_tmp_var (type, prefix);

  return new_vect_var;
}
