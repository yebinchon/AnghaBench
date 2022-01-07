
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {int * alpha2; } ;


 int pr_info (char*,int ,int ) ;
 int print_rd_rules (struct ieee80211_regdomain const*) ;

__attribute__((used)) static void print_regdomain_info(const struct ieee80211_regdomain *rd)
{
 pr_info("Regulatory domain: %c%c\n", rd->alpha2[0], rd->alpha2[1]);
 print_rd_rules(rd);
}
