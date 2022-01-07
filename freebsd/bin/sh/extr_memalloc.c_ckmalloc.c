
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pointer ;


 int INTOFF ;
 int INTON ;
 int error (char*) ;
 int * malloc (size_t) ;

pointer
ckmalloc(size_t nbytes)
{
 pointer p;

 INTOFF;
 p = malloc(nbytes);
 INTON;
 if (p == ((void*)0))
  error("Out of space");
 return p;
}
