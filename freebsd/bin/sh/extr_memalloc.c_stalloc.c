
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* pointer ;


 int ALIGN (int) ;
 int stacknleft ;
 char* stacknxt ;
 int stnewblock (int) ;

pointer
stalloc(int nbytes)
{
 char *p;

 nbytes = ALIGN(nbytes);
 if (nbytes > stacknleft)
  stnewblock(nbytes);
 p = stacknxt;
 stacknxt += nbytes;
 stacknleft -= nbytes;
 return p;
}
