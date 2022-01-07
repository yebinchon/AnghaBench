
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pointer ;


 int INTOFF ;
 int INTON ;
 int error (char*) ;
 int * realloc (int *,int) ;

pointer
ckrealloc(pointer p, int nbytes)
{
 INTOFF;
 p = realloc(p, nbytes);
 INTON;
 if (p == ((void*)0))
  error("Out of space");
 return p;
}
