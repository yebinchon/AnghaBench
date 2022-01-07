
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_to_dependency {int type; } ;
typedef enum insn_type_for_dependency { ____Placeholder_insn_type_for_dependency } insn_type_for_dependency ;


 int D_all_insn ;
 int INSN_NAME_LEN ;
 int dependency_insn_hsh ;
 scalar_t__ hash_find (int ,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static enum insn_type_for_dependency
dependency_type_from_insn (char *insn_name)
{
  char name[INSN_NAME_LEN];
  const struct insn_to_dependency *tmp;

  strcpy (name, insn_name);
  tmp = (const struct insn_to_dependency *) hash_find (dependency_insn_hsh, name);

  if (tmp)
    return tmp->type;

  return D_all_insn;
}
