
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLASSTYPE_TEMPLATE_ID_P (int const) ;
 scalar_t__ CLASS_TYPE_P (int const) ;
 int * DECL_LANG_SPECIFIC (int const) ;
 int DECL_TEMPLATE_INFO (int const) ;
 int DECL_TI_TEMPLATE (int const) ;
 scalar_t__ DECL_USE_TEMPLATE (int const) ;
 scalar_t__ PRIMARY_TEMPLATE_P (int ) ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (int const) ;
 int TREE_TYPE (int const) ;
 scalar_t__ TYPE_DECL ;
 int TYPE_TEMPLATE_INFO (int const) ;

__attribute__((used)) static int
decl_is_template_id (const tree decl, tree* const template_info)
{
  if (TREE_CODE (decl) == TYPE_DECL)
    {


      const tree type = TREE_TYPE (decl);

      if (CLASS_TYPE_P (type) && CLASSTYPE_TEMPLATE_ID_P (type))
 {
   if (template_info != ((void*)0))


     *template_info = TYPE_TEMPLATE_INFO (type);
   return 1;
 }
    }
  else
    {

      if (DECL_LANG_SPECIFIC (decl) != ((void*)0)
   && DECL_USE_TEMPLATE (decl)
   && PRIMARY_TEMPLATE_P (DECL_TI_TEMPLATE (decl))
   && TREE_CODE (decl) != TEMPLATE_DECL)
 {
   if (template_info != ((void*)0))


     *template_info = DECL_TEMPLATE_INFO (decl);
   return 1;
 }
    }


  return 0;
}
