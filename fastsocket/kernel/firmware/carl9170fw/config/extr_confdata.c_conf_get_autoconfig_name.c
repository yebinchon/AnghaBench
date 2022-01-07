
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;

const char *conf_get_autoconfig_name(void)
{
 char *name = getenv("KCONFIG_AUTOCONFIG");

 return name ? name : "include/generated/auto.conf";
}
