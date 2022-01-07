
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PSTRING ;
typedef scalar_t__ INT ;


 int * strpbrk (int *,int *) ;

INT delimitcnt(PSTRING s,PSTRING ct)
{
 INT count = 0;

 PSTRING token = s;

 for ( ;; )
 {
  token = strpbrk(token, ct);

        if ( token == ((void*)0) )
  {

   break;
  }

     ++token;






     ++count;
 }
    return count;
}
