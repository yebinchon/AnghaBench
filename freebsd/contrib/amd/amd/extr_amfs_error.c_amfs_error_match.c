
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_opts ;


 char* xstrdup (char*) ;

__attribute__((used)) static char *
amfs_error_match(am_opts *fo)
{
  return xstrdup("(error-hook)");
}
