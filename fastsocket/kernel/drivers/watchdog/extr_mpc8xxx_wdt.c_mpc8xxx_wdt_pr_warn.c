
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_crit (char*,char const*,char*) ;
 scalar_t__ reset ;

__attribute__((used)) static void mpc8xxx_wdt_pr_warn(const char *msg)
{
 pr_crit("mpc8xxx_wdt: %s, expect the %s soon!\n", msg,
  reset ? "reset" : "machine check exception");
}
