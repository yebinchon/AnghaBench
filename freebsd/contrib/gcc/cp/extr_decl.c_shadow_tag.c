
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_5__ {scalar_t__ attributes; } ;
typedef TYPE_1__ cp_decl_specifier_seq ;


 scalar_t__ ANON_AGGR_TYPE_P (int ) ;
 int NORMAL ;
 int NULL_TREE ;
 scalar_t__ TYPE_FIELDS (int ) ;
 int check_tag_decl (TYPE_1__*) ;
 int class_key_or_enum_as_string (int ) ;
 scalar_t__ error_mark_node ;
 int finish_anon_union (int ) ;
 int fixup_anonymous_aggr (int ) ;
 int grokdeclarator (int *,TYPE_1__*,int ,int ,int *) ;
 scalar_t__ maybe_process_partial_specialization (int ) ;
 int warning (int ,char*,int ,...) ;

tree
shadow_tag (cp_decl_specifier_seq *declspecs)
{
  tree t = check_tag_decl (declspecs);

  if (!t)
    return NULL_TREE;

  if (declspecs->attributes)
    {
      warning (0, "attribute ignored in declaration of %q+#T", t);
      warning (0, "attribute for %q+#T must follow the %qs keyword",
        t, class_key_or_enum_as_string (t));

    }

  if (maybe_process_partial_specialization (t) == error_mark_node)
    return NULL_TREE;






  if (ANON_AGGR_TYPE_P (t))
    {
      fixup_anonymous_aggr (t);

      if (TYPE_FIELDS (t))
 {
   tree decl = grokdeclarator ( ((void*)0),
          declspecs, NORMAL, 0, ((void*)0));
   finish_anon_union (decl);
 }
    }

  return t;
}
