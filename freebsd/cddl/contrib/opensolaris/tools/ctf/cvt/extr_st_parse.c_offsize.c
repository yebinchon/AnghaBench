
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ml_offset; int ml_size; } ;
typedef TYPE_1__ mlist_t ;


 int expected (char*,char*,char*) ;
 char* number (char*,int*) ;

__attribute__((used)) static char *
offsize(char *cp, mlist_t *mlp)
{
 int offset, size;

 if (*cp == ',')
  cp++;
 cp = number(cp, &offset);
 if (*cp++ != ',')
  expected("offsize/2", ",", cp - 1);
 cp = number(cp, &size);
 if (*cp++ != ';')
  expected("offsize/3", ";", cp - 1);
 mlp->ml_offset = offset;
 mlp->ml_size = size;
 return (cp);
}
