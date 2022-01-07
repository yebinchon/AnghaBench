
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int type; char* help; int flags; int short_name; char* long_name; char* argh; } ;
 int PARSE_OPT_HELP ;
 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_NOARG ;
 int PARSE_OPT_OPTARG ;
 char* USAGE_GAP ;
 size_t USAGE_OPTS_WIDTH ;
 size_t fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int stderr ;

int usage_with_options_internal(const char * const *usagestr,
    const struct option *opts, int full)
{
 if (!usagestr)
  return PARSE_OPT_HELP;

 fprintf(stderr, "\n usage: %s\n", *usagestr++);
 while (*usagestr && **usagestr)
  fprintf(stderr, "    or: %s\n", *usagestr++);
 while (*usagestr) {
  fprintf(stderr, "%s%s\n",
    **usagestr ? "    " : "",
    *usagestr);
  usagestr++;
 }

 if (opts->type != 136)
  fputc('\n', stderr);

 for (; opts->type != 137; opts++) {
  size_t pos;
  int pad;

  if (opts->type == 136) {
   fputc('\n', stderr);
   if (*opts->help)
    fprintf(stderr, "%s\n", opts->help);
   continue;
  }
  if (!full && (opts->flags & PARSE_OPT_HIDDEN))
   continue;

  pos = fprintf(stderr, "    ");
  if (opts->short_name)
   pos += fprintf(stderr, "-%c", opts->short_name);
  else
   pos += fprintf(stderr, "    ");

  if (opts->long_name && opts->short_name)
   pos += fprintf(stderr, ", ");
  if (opts->long_name)
   pos += fprintf(stderr, "--%s", opts->long_name);

  switch (opts->type) {
  case 141:
   break;
  case 133:
  case 129:
  case 134:
  case 128:
   if (opts->flags & PARSE_OPT_OPTARG)
    if (opts->long_name)
     pos += fprintf(stderr, "[=<n>]");
    else
     pos += fprintf(stderr, "[<n>]");
   else
    pos += fprintf(stderr, " <n>");
   break;
  case 138:
   if (opts->flags & PARSE_OPT_NOARG)
    break;

  case 130:
   if (opts->argh) {
    if (opts->flags & PARSE_OPT_OPTARG)
     if (opts->long_name)
      pos += fprintf(stderr, "[=<%s>]", opts->argh);
     else
      pos += fprintf(stderr, "[<%s>]", opts->argh);
    else
     pos += fprintf(stderr, " <%s>", opts->argh);
   } else {
    if (opts->flags & PARSE_OPT_OPTARG)
     if (opts->long_name)
      pos += fprintf(stderr, "[=...]");
     else
      pos += fprintf(stderr, "[...]");
    else
     pos += fprintf(stderr, " ...");
   }
   break;
  default:
  case 137:
  case 136:
  case 140:
  case 139:
  case 135:
  case 131:
  case 132:
   break;
  }

  if (pos <= USAGE_OPTS_WIDTH)
   pad = USAGE_OPTS_WIDTH - pos;
  else {
   fputc('\n', stderr);
   pad = USAGE_OPTS_WIDTH;
  }
  fprintf(stderr, "%*s%s\n", pad + USAGE_GAP, "", opts->help);
 }
 fputc('\n', stderr);

 return PARSE_OPT_HELP;
}
