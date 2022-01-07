
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kptr_restrict; } ;


 int free (char*) ;
 char* realpath (char const*,int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static bool symbol__restricted_filename(const char *filename,
     const char *restricted_filename)
{
 bool restricted = 0;

 if (symbol_conf.kptr_restrict) {
  char *r = realpath(filename, ((void*)0));

  if (r != ((void*)0)) {
   restricted = strcmp(r, restricted_filename) == 0;
   free(r);
   return restricted;
  }
 }

 return restricted;
}
