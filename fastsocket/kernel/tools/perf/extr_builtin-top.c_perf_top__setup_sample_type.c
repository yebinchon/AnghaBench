
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_top {int dont_use_callchains; int sort_has_symbols; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct TYPE_4__ {scalar_t__ use_callchain; } ;


 scalar_t__ CHAIN_NONE ;
 int EINVAL ;
 TYPE_2__ callchain_param ;
 scalar_t__ callchain_register_param (TYPE_2__*) ;
 TYPE_1__ symbol_conf ;
 int ui__error (char*) ;

__attribute__((used)) static int perf_top__setup_sample_type(struct perf_top *top)
{
 if (!top->sort_has_symbols) {
  if (symbol_conf.use_callchain) {
   ui__error("Selected -g but \"sym\" not present in --sort/-s.");
   return -EINVAL;
  }
 } else if (!top->dont_use_callchains && callchain_param.mode != CHAIN_NONE) {
  if (callchain_register_param(&callchain_param) < 0) {
   ui__error("Can't register callchain params.\n");
   return -EINVAL;
  }
 }

 return 0;
}
