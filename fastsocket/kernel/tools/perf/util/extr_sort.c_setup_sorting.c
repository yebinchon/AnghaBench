
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int error (char*,char*) ;
 int free (char*) ;
 scalar_t__ sort_dimension__add (char*) ;
 int sort_order ;
 char* strdup (int ) ;
 char* strtok_r (char*,char*,char**) ;
 int usage_with_options (char const* const*,struct option const*) ;

void setup_sorting(const char * const usagestr[], const struct option *opts)
{
 char *tmp, *tok, *str = strdup(sort_order);

 for (tok = strtok_r(str, ", ", &tmp);
   tok; tok = strtok_r(((void*)0), ", ", &tmp)) {
  if (sort_dimension__add(tok) < 0) {
   error("Unknown --sort key: `%s'", tok);
   usage_with_options(usagestr, opts);
  }
 }

 free(str);
}
