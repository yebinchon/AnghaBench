
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INT ;


 char* strpbrk (char const*,char const*) ;

INT delimitcnt(char * s,const char * ct)
{
 INT count = 0;

 const char *token = s;

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
