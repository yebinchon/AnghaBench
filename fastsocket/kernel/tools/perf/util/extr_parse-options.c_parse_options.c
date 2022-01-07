
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {char** argv; int * opt; } ;
struct option {char* long_name; int type; } ;


 int OPTION_END ;



 int error (char*,int ) ;
 int exit (int) ;
 int parse_options_end (struct parse_opt_ctx_t*) ;
 int parse_options_start (struct parse_opt_ctx_t*,int,char const**,int) ;
 int parse_options_step (struct parse_opt_ctx_t*,struct option const*,char const* const*) ;
 int perf_header__set_cmdline (int,char const**) ;
 int printf (char*,char*) ;
 int usage_with_options (char const* const*,struct option const*) ;

int parse_options(int argc, const char **argv, const struct option *options,
    const char * const usagestr[], int flags)
{
 struct parse_opt_ctx_t ctx;

 perf_header__set_cmdline(argc, argv);

 parse_options_start(&ctx, argc, argv, flags);
 switch (parse_options_step(&ctx, options, usagestr)) {
 case 129:
  exit(129);
 case 130:
  break;
 case 128:
  while (options->type != OPTION_END) {
   printf("--%s ", options->long_name);
   options++;
  }
  exit(130);
 default:
  if (ctx.argv[0][1] == '-') {
   error("unknown option `%s'", ctx.argv[0] + 2);
  } else {
   error("unknown switch `%c'", *ctx.opt);
  }
  usage_with_options(usagestr, options);
 }

 return parse_options_end(&ctx);
}
