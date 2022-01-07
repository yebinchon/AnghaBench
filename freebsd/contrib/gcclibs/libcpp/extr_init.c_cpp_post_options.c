
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 scalar_t__ CPP_OPTION (int *,int ) ;
 int cplusplus ;
 int mark_named_operators (int *) ;
 int operator_names ;
 int post_options (int *) ;
 int sanity_checks (int *) ;

void
cpp_post_options (cpp_reader *pfile)
{
  sanity_checks (pfile);

  post_options (pfile);


  if (CPP_OPTION (pfile, cplusplus) && CPP_OPTION (pfile, operator_names))
    mark_named_operators (pfile);
}
