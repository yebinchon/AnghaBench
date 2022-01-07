
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CLASSTYPE_TEMPLATE_SPECIALIZATION (int ) ;
 scalar_t__ CLASS_TYPE_P (int ) ;
 scalar_t__ DECL_CLASS_SCOPE_P (int ) ;
 int DECL_CONTEXT (int ) ;
 int DECL_CONV_FN_P (int ) ;
 int DECL_FRIEND_P (int ) ;
 scalar_t__ DECL_FUNCTION_TEMPLATE_P (int ) ;
 int DECL_MEMBER_TEMPLATE_P (int ) ;
 int DECL_TEMPLATE_RESULT (int ) ;

__attribute__((used)) static inline bool
optimize_specialization_lookup_p (tree tmpl)
{
  return (DECL_FUNCTION_TEMPLATE_P (tmpl)
   && DECL_CLASS_SCOPE_P (tmpl)


   && CLASS_TYPE_P (DECL_CONTEXT (tmpl))





   && !CLASSTYPE_TEMPLATE_SPECIALIZATION (DECL_CONTEXT (tmpl))
   && !DECL_MEMBER_TEMPLATE_P (tmpl)
   && !DECL_CONV_FN_P (tmpl)
   && !DECL_FRIEND_P (DECL_TEMPLATE_RESULT (tmpl)));
}
