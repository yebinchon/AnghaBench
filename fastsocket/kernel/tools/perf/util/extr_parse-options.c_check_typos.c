
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ type; char const* long_name; } ;


 scalar_t__ OPTION_END ;
 int error (char*,char const*) ;
 int exit (int) ;
 int prefixcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void check_typos(const char *arg, const struct option *options)
{
 if (strlen(arg) < 3)
  return;

 if (!prefixcmp(arg, "no-")) {
  error ("did you mean `--%s` (with two dashes ?)", arg);
  exit(129);
 }

 for (; options->type != OPTION_END; options++) {
  if (!options->long_name)
   continue;
  if (!prefixcmp(options->long_name, arg)) {
   error ("did you mean `--%s` (with two dashes ?)", arg);
   exit(129);
  }
 }
}
