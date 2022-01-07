
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {int options; } ;


 int AR_BSD ;
 int AR_STRINGTAB_NAME_SVR4 ;
 int AR_SYMTAB_NAME_BSD ;
 int AR_SYMTAB_NAME_SVR4 ;
 scalar_t__ strcmp (char const*,int ) ;

int
bsdar_is_pseudomember(struct bsdar *bsdar, const char *name)
{




 if (bsdar->options & AR_BSD)
  return (strcmp(name, AR_SYMTAB_NAME_BSD) == 0);
 else




  return (strcmp(name, AR_STRINGTAB_NAME_SVR4) == 0 ||
      strcmp(name, AR_SYMTAB_NAME_SVR4) == 0);
}
