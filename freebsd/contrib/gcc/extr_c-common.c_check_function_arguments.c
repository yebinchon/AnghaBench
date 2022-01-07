
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int check_function_format (int ,int ) ;
 int check_function_nonnull (int ,int ) ;
 int check_function_sentinel (int ,int ,int ) ;
 scalar_t__ warn_format ;
 scalar_t__ warn_missing_format_attribute ;
 scalar_t__ warn_nonnull ;

void
check_function_arguments (tree attrs, tree params, tree typelist)
{



  if (warn_nonnull)
    check_function_nonnull (attrs, params);



  if (warn_format || warn_missing_format_attribute)
      check_function_format (attrs, params);

  if (warn_format)
    check_function_sentinel (attrs, params, typelist);
}
