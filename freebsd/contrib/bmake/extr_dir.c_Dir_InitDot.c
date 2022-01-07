
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refCount; } ;
typedef int LstNode ;


 TYPE_1__* Dir_AddDir (int *,char*) ;
 int Dir_SetPATH () ;
 int Error (char*,int ) ;
 int Lst_Member (int ,TYPE_1__*) ;
 int Lst_Remove (int ,int ) ;
 TYPE_1__* dot ;
 int errno ;
 int exit (int) ;
 int openDirectories ;
 int strerror (int ) ;

void
Dir_InitDot(void)
{
    if (dot != ((void*)0)) {
 LstNode ln;


 ln = Lst_Member(openDirectories, dot);
 (void)Lst_Remove(openDirectories, ln);
    }

    dot = Dir_AddDir(((void*)0), ".");

    if (dot == ((void*)0)) {
 Error("Cannot open `.' (%s)", strerror(errno));
 exit(1);
    }





    dot->refCount += 1;
    Dir_SetPATH();
}
