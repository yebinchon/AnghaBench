
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tdesc_t ;
typedef int iitype_t ;
struct TYPE_3__ {int ii_type; int * ii_dtype; } ;
typedef TYPE_1__ iidesc_t ;


 int II_GVAR ;
 int II_NOT ;
 int II_PSYM ;
 int II_SVAR ;
 int expected (char*,char*,char*) ;
 char* read_tid (char*,int **) ;

__attribute__((used)) static iitype_t
parse_sym(char *cp, iidesc_t *ii)
{
 tdesc_t *tdp;
 iitype_t iitype = 0;





 switch (*cp++) {
 case 'G':
  iitype = II_GVAR;
  break;
 case 'S':
  iitype = II_SVAR;
  break;
 case 'p':
  iitype = II_PSYM;
  break;
 case '(':
  cp--;

 case 'r':
 case 'V':
  iitype = II_NOT;
  break;
 default:
  expected("parse_sym", "[GprSV(]", cp - 1);
 }

 if (!(cp = read_tid(cp, &tdp)))
  return (-1);

 ii->ii_type = iitype;
 ii->ii_dtype = tdp;

 return (iitype);
}
