
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int EQ ;
 int GE ;
 int GT ;
 int LE ;
 int LT ;
 int NE ;

int
v9_regcmp_p (enum rtx_code code)
{
  return (code == EQ || code == NE || code == GE || code == LT
   || code == LE || code == GT);
}
