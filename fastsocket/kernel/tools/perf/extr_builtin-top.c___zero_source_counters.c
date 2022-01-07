
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct TYPE_2__ {struct symbol* sym; } ;
struct hist_entry {TYPE_1__ ms; } ;


 int symbol__annotate_zero_histograms (struct symbol*) ;

__attribute__((used)) static void __zero_source_counters(struct hist_entry *he)
{
 struct symbol *sym = he->ms.sym;
 symbol__annotate_zero_histograms(sym);
}
