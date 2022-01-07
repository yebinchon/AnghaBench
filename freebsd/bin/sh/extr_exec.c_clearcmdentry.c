
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tblentry {scalar_t__ cmdtype; struct tblentry* next; } ;


 scalar_t__ CMDNORMAL ;
 size_t CMDTABLESIZE ;
 int INTOFF ;
 int INTON ;
 int ckfree (struct tblentry*) ;
 struct tblentry** cmdtable ;
 scalar_t__ cmdtable_cd ;

void
clearcmdentry(void)
{
 struct tblentry **tblp;
 struct tblentry **pp;
 struct tblentry *cmdp;

 INTOFF;
 for (tblp = cmdtable ; tblp < &cmdtable[CMDTABLESIZE] ; tblp++) {
  pp = tblp;
  while ((cmdp = *pp) != ((void*)0)) {
   if (cmdp->cmdtype == CMDNORMAL) {
    *pp = cmdp->next;
    ckfree(cmdp);
   } else {
    pp = &cmdp->next;
   }
  }
 }
 cmdtable_cd = 0;
 INTON;
}
