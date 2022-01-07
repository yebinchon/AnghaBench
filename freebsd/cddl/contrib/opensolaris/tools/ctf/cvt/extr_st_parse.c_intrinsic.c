
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_size; TYPE_2__* t_intr; int * t_name; int t_type; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_5__ {int intr_signed; int intr_offset; int intr_nbits; int intr_fformat; int intr_type; int intr_iformat; } ;
typedef TYPE_2__ intr_t ;


 int CTF_FP_MAX ;
 int INTRINSIC ;
 int INTR_INT ;
 int INTR_REAL ;
 int expected (char*,char*,char*) ;
 int isdigit (char) ;
 char* number (char*,int*) ;
 int parse_debug (int,int *,char*,int) ;
 int strchr (char*,char) ;
 void* xcalloc (int) ;

__attribute__((used)) static char *
intrinsic(char *cp, tdesc_t **rtdp)
{
 intr_t *intr = xcalloc(sizeof (intr_t));
 tdesc_t *tdp;
 int width, fmt, i;

 switch (*cp++) {
 case 'b':
  intr->intr_type = INTR_INT;
  if (*cp == 's')
   intr->intr_signed = 1;
  else if (*cp != 'u')
   expected("intrinsic/b", "[su]", cp);
  cp++;

  if (strchr("cbv", *cp))
   intr->intr_iformat = *cp++;

  cp = number(cp, &width);
  if (*cp++ != ';')
   expected("intrinsic/b", "; (post-width)", cp - 1);

  cp = number(cp, &intr->intr_offset);
  if (*cp++ != ';')
   expected("intrinsic/b", "; (post-offset)", cp - 1);

  cp = number(cp, &intr->intr_nbits);
  break;

 case 'R':
  intr->intr_type = INTR_REAL;
  for (fmt = 0, i = 0; isdigit(*(cp + i)); i++)
   fmt = fmt * 10 + (*(cp + i) - '0');

  if (fmt < 1 || fmt > CTF_FP_MAX)
   expected("intrinsic/R", "number <= CTF_FP_MAX", cp);

  intr->intr_fformat = fmt;
  cp += i;

  if (*cp++ != ';')
   expected("intrinsic/R", ";", cp - 1);
  cp = number(cp, &width);

  intr->intr_nbits = width * 8;
  break;
 }

 tdp = xcalloc(sizeof (*tdp));
 tdp->t_type = INTRINSIC;
 tdp->t_size = width;
 tdp->t_name = ((void*)0);
 tdp->t_intr = intr;
 parse_debug(3, ((void*)0), "intrinsic: size=%d", width);
 *rtdp = tdp;

 return (cp);
}
