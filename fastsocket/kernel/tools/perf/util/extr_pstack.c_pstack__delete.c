
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstack {int dummy; } ;


 int free (struct pstack*) ;

void pstack__delete(struct pstack *pstack)
{
 free(pstack);
}
