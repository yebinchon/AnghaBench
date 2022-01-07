
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refCount; struct TYPE_4__* name; int files; } ;
typedef TYPE_1__ Path ;
typedef int LstNode ;


 int Hash_DeleteTable (int *) ;
 int Lst_Member (int ,TYPE_1__*) ;
 int Lst_Remove (int ,int ) ;
 int free (TYPE_1__*) ;
 int openDirectories ;

void
Dir_Destroy(void *pp)
{
    Path *p = (Path *)pp;
    p->refCount -= 1;

    if (p->refCount == 0) {
 LstNode ln;

 ln = Lst_Member(openDirectories, p);
 (void)Lst_Remove(openDirectories, ln);

 Hash_DeleteTable(&p->files);
 free(p->name);
 free(p);
    }
}
