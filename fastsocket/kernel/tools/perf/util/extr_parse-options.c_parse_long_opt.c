
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {char const** out; char const* opt; int cpidx; } ;
struct option {scalar_t__ type; char const* long_name; } ;


 scalar_t__ OPTION_ARGUMENT ;
 scalar_t__ OPTION_END ;
 int OPT_UNSET ;
 int error (char*,char const*,char*,char*,char*,char*) ;
 int get_value (struct parse_opt_ctx_t*,struct option const*,int) ;
 int opterror (struct option const*,char*,int) ;
 int prefixcmp (char*,char const*) ;
 char* skip_prefix (char const*,char const*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int parse_long_opt(struct parse_opt_ctx_t *p, const char *arg,
                          const struct option *options)
{
 const char *arg_end = strchr(arg, '=');
 const struct option *abbrev_option = ((void*)0), *ambiguous_option = ((void*)0);
 int abbrev_flags = 0, ambiguous_flags = 0;

 if (!arg_end)
  arg_end = arg + strlen(arg);

 for (; options->type != OPTION_END; options++) {
  const char *rest;
  int flags = 0;

  if (!options->long_name)
   continue;

  rest = skip_prefix(arg, options->long_name);
  if (options->type == OPTION_ARGUMENT) {
   if (!rest)
    continue;
   if (*rest == '=')
    return opterror(options, "takes no value", flags);
   if (*rest)
    continue;
   p->out[p->cpidx++] = arg - 2;
   return 0;
  }
  if (!rest) {

   if (!strncmp(options->long_name, arg, arg_end - arg)) {
is_abbreviated:
    if (abbrev_option) {






     ambiguous_option = abbrev_option;
     ambiguous_flags = abbrev_flags;
    }
    if (!(flags & OPT_UNSET) && *arg_end)
     p->opt = arg_end + 1;
    abbrev_option = options;
    abbrev_flags = flags;
    continue;
   }

   if (!prefixcmp("no-", arg)) {
    flags |= OPT_UNSET;
    goto is_abbreviated;
   }

   if (strncmp(arg, "no-", 3))
    continue;
   flags |= OPT_UNSET;
   rest = skip_prefix(arg + 3, options->long_name);

   if (!rest && !prefixcmp(options->long_name, arg + 3))
    goto is_abbreviated;
   if (!rest)
    continue;
  }
  if (*rest) {
   if (*rest != '=')
    continue;
   p->opt = rest + 1;
  }
  return get_value(p, options, flags);
 }

 if (ambiguous_option)
  return error("Ambiguous option: %s "
   "(could be --%s%s or --%s%s)",
   arg,
   (ambiguous_flags & OPT_UNSET) ? "no-" : "",
   ambiguous_option->long_name,
   (abbrev_flags & OPT_UNSET) ? "no-" : "",
   abbrev_option->long_name);
 if (abbrev_option)
  return get_value(p, abbrev_option, abbrev_flags);
 return -2;
}
