
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
struct TYPE_2__ {char* (* strip_name_encoding ) (int ) ;} ;


 scalar_t__ DECL_COMMON (int ) ;
 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ DECL_INITIAL (int ) ;
 int DECL_NAME (int ) ;
 scalar_t__ DECL_ONE_ONLY (int ) ;
 int DECL_RTL (int ) ;
 scalar_t__ DECL_WEAK (int ) ;
 scalar_t__ FUNCTION_DECL ;
 int MEM_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_PUBLIC (int ) ;
 scalar_t__ VAR_DECL ;
 int XEXP (int ,int ) ;
 int XSTR (int ,int ) ;
 scalar_t__ error_mark_node ;
 char* first_global_object_name ;
 char* ggc_strdup (char const*) ;
 char* stub1 (int ) ;
 TYPE_1__ targetm ;
 char* weak_global_object_name ;

void
notice_global_symbol (tree decl)
{
  const char **type = &first_global_object_name;

  if (first_global_object_name
      || !TREE_PUBLIC (decl)
      || DECL_EXTERNAL (decl)
      || !DECL_NAME (decl)
      || (TREE_CODE (decl) != FUNCTION_DECL
   && (TREE_CODE (decl) != VAR_DECL
       || (DECL_COMMON (decl)
    && (DECL_INITIAL (decl) == 0
        || DECL_INITIAL (decl) == error_mark_node))))
      || !MEM_P (DECL_RTL (decl)))
    return;



  if (DECL_WEAK (decl) || DECL_ONE_ONLY (decl))
    type = &weak_global_object_name;

  if (!*type)
    {
      const char *p;
      const char *name;
      rtx decl_rtl = DECL_RTL (decl);

      p = targetm.strip_name_encoding (XSTR (XEXP (decl_rtl, 0), 0));
      name = ggc_strdup (p);

      *type = name;
    }
}
