
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* t_ardef; } ;
typedef TYPE_1__ tdesc_t ;
typedef int ardef_t ;
struct TYPE_5__ {int ad_nelems; int ad_contents; int ad_idxtype; } ;


 int expected (char*,char*,char*) ;
 char* id (char*,int*) ;
 int lookup (int) ;
 char* number (char*,int*) ;
 int parse_debug (int,char*,char*,int,int,int) ;
 char* tdefdecl (char*,int,int *) ;
 TYPE_2__* xcalloc (int) ;

__attribute__((used)) static char *
arraydef(char *cp, tdesc_t **rtdp)
{
 int start, end, h;

 cp = id(cp, &h);
 if (*cp++ != ';')
  expected("arraydef/1", ";", cp - 1);

 (*rtdp)->t_ardef = xcalloc(sizeof (ardef_t));
 (*rtdp)->t_ardef->ad_idxtype = lookup(h);

 cp = number(cp, &start);
 if (*cp++ != ';')
  expected("arraydef/2", ";", cp - 1);

 if (*cp == 'S') {
  cp++;
  if (*cp == '-')
   cp++;
  cp = number(cp, &end);
  end = start;
 } else {





  cp = number(cp, &end);
 }

 if (*cp++ != ';')
  expected("arraydef/3", ";", cp - 1);
 (*rtdp)->t_ardef->ad_nelems = end - start + 1;
 cp = tdefdecl(cp, h, &((*rtdp)->t_ardef->ad_contents));

 parse_debug(3, cp, "defined array idx type %d %d-%d next ",
     h, start, end);

 return (cp);
}
