
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotate__config {int name; } ;


 int strcmp (void const*,int ) ;

__attribute__((used)) static int annotate_config__cmp(const void *name, const void *cfgp)
{
 const struct annotate__config *cfg = cfgp;

 return strcmp(name, cfg->name);
}
