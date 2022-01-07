
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct object_block {int dummy; } ;
typedef int section ;


 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ DECL_ONE_ONLY (int ) ;
 int * DECL_SIZE_UNIT (int ) ;
 scalar_t__ SECTION_NOSWITCH ;
 scalar_t__ SECTION_STYLE (int *) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int align_variable (int ,int ) ;
 struct object_block* get_block_for_section (int *) ;
 int * get_variable_section (int ,int) ;
 int host_integerp (int *,int) ;

__attribute__((used)) static struct object_block *
get_block_for_decl (tree decl)
{
  section *sect;

  if (TREE_CODE (decl) == VAR_DECL)
    {

      if (DECL_EXTERNAL (decl))
 return ((void*)0);



      if (DECL_ONE_ONLY (decl))
 return ((void*)0);
    }



  if (DECL_SIZE_UNIT (decl) == ((void*)0))
    return ((void*)0);
  if (!host_integerp (DECL_SIZE_UNIT (decl), 1))
    return ((void*)0);



  if (TREE_CODE (decl) == VAR_DECL)
      align_variable (decl, 0);
  sect = get_variable_section (decl, 1);
  if (SECTION_STYLE (sect) == SECTION_NOSWITCH)
    return ((void*)0);

  return get_block_for_section (sect);
}
