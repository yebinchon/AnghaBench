
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int ) ;
 int first_base ;
 int itemset ;
 int ruleset ;

void
finalize_closure(void)
{
    FREE(itemset);
    FREE(ruleset);
    FREE(first_base);
}
