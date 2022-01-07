
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pointer ;


 int INTOFF ;
 int INTON ;
 int free (int ) ;

void
ckfree(pointer p)
{
 INTOFF;
 free(p);
 INTON;
}
