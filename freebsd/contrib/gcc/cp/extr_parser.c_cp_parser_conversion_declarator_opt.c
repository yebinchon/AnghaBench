
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int cp_parser ;
typedef int cp_declarator ;
typedef int cp_cv_quals ;


 int INDIRECT_REF ;
 scalar_t__ cp_parser_parse_definitely (int *) ;
 int cp_parser_parse_tentatively (int *) ;
 int cp_parser_ptr_operator (int *,scalar_t__*,int *) ;
 int * make_pointer_declarator (int ,int *) ;
 int * make_ptrmem_declarator (int ,scalar_t__,int *) ;
 int * make_reference_declarator (int ,int *) ;

__attribute__((used)) static cp_declarator *
cp_parser_conversion_declarator_opt (cp_parser* parser)
{
  enum tree_code code;
  tree class_type;
  cp_cv_quals cv_quals;


  cp_parser_parse_tentatively (parser);

  code = cp_parser_ptr_operator (parser, &class_type, &cv_quals);

  if (cp_parser_parse_definitely (parser))
    {
      cp_declarator *declarator;


      declarator = cp_parser_conversion_declarator_opt (parser);


      if (class_type)
 declarator = make_ptrmem_declarator (cv_quals, class_type,
          declarator);
      else if (code == INDIRECT_REF)
 declarator = make_pointer_declarator (cv_quals, declarator);
      else
 declarator = make_reference_declarator (cv_quals, declarator);

      return declarator;
   }

  return ((void*)0);
}
