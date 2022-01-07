
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts_kmp {void* pattern; } ;
struct ts_config {int dummy; } ;


 struct ts_kmp* ts_config_priv (struct ts_config*) ;

__attribute__((used)) static void *kmp_get_pattern(struct ts_config *conf)
{
 struct ts_kmp *kmp = ts_config_priv(conf);
 return kmp->pattern;
}
