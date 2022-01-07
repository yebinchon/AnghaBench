
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tblentry {struct tblentry* next; } ;


 int INTOFF ;
 int INTON ;
 int ckfree (struct tblentry*) ;
 struct tblentry** lastcmdentry ;

__attribute__((used)) static void
delete_cmd_entry(void)
{
 struct tblentry *cmdp;

 INTOFF;
 cmdp = *lastcmdentry;
 *lastcmdentry = cmdp->next;
 ckfree(cmdp);
 INTON;
}
