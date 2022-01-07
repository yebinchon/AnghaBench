
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* t_emem; int t_type; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_7__ {char* el_name; struct TYPE_7__* el_next; int el_number; } ;
typedef TYPE_2__ elist_t ;


 int ENUM ;
 int expected (char*,char*,char*) ;
 char* name (char*,char**) ;
 char* number (char*,int *) ;
 int parse_debug (int,int *,char*,int ,char*,int ) ;
 int tdesc_name (TYPE_1__*) ;
 TYPE_2__* xcalloc (int) ;

__attribute__((used)) static void
enumdef(char *cp, tdesc_t **rtdp)
{
 elist_t *elp, **prev;
 char *w;

 (*rtdp)->t_type = ENUM;
 (*rtdp)->t_emem = ((void*)0);

 prev = &((*rtdp)->t_emem);
 while (*cp != ';') {
  elp = xcalloc(sizeof (*elp));
  elp->el_next = ((void*)0);
  *prev = elp;
  cp = name(cp, &w);
  elp->el_name = w;
  cp = number(cp, &elp->el_number);
  parse_debug(3, ((void*)0), "enum %s: %s=%d", tdesc_name(*rtdp),
      elp->el_name, elp->el_number);
  prev = &elp->el_next;
  if (*cp++ != ',')
   expected("enumdef", ",", cp - 1);
 }
}
