
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_report {int dont_use_callchains; } ;
struct option {scalar_t__ value; } ;
struct TYPE_5__ {int order; int print_limit; int min_percent; int mode; } ;
struct TYPE_4__ {int use_callchain; } ;


 int CHAIN_FLAT ;
 int CHAIN_GRAPH_ABS ;
 int CHAIN_GRAPH_REL ;
 int CHAIN_NONE ;
 int ORDER_CALLEE ;
 int ORDER_CALLER ;
 TYPE_2__ callchain_param ;
 scalar_t__ callchain_register_param (TYPE_2__*) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int strlen (char const*) ;
 int strncmp (char*,char*,int ) ;
 int strtod (char*,char**) ;
 char* strtok (char*,char*) ;
 int strtoul (char*,char**,int ) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int
parse_callchain_opt(const struct option *opt, const char *arg, int unset)
{
 struct perf_report *rep = (struct perf_report *)opt->value;
 char *tok, *tok2;
 char *endptr;




 if (unset) {
  rep->dont_use_callchains = 1;
  return 0;
 }

 symbol_conf.use_callchain = 1;

 if (!arg)
  return 0;

 tok = strtok((char *)arg, ",");
 if (!tok)
  return -1;


 if (!strncmp(tok, "graph", strlen(arg)))
  callchain_param.mode = CHAIN_GRAPH_ABS;

 else if (!strncmp(tok, "flat", strlen(arg)))
  callchain_param.mode = CHAIN_FLAT;

 else if (!strncmp(tok, "fractal", strlen(arg)))
  callchain_param.mode = CHAIN_GRAPH_REL;

 else if (!strncmp(tok, "none", strlen(arg))) {
  callchain_param.mode = CHAIN_NONE;
  symbol_conf.use_callchain = 0;

  return 0;
 }

 else
  return -1;


 tok = strtok(((void*)0), ",");
 if (!tok)
  goto setup;

 callchain_param.min_percent = strtod(tok, &endptr);
 if (tok == endptr)
  return -1;


 tok2 = strtok(((void*)0), ",");
 if (!tok2)
  goto setup;

 if (tok2[0] != 'c') {
  callchain_param.print_limit = strtoul(tok2, &endptr, 0);
  tok2 = strtok(((void*)0), ",");
  if (!tok2)
   goto setup;
 }


 if (!strcmp(tok2, "caller"))
  callchain_param.order = ORDER_CALLER;
 else if (!strcmp(tok2, "callee"))
  callchain_param.order = ORDER_CALLEE;
 else
  return -1;
setup:
 if (callchain_register_param(&callchain_param) < 0) {
  fprintf(stderr, "Can't register callchain params\n");
  return -1;
 }
 return 0;
}
