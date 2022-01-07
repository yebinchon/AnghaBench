
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int select (int,int *,int *,int *,int *) ;
 int setenv (char*,char*,int ) ;

__attribute__((used)) static void pager_preexec(void)
{




 fd_set in;

 FD_ZERO(&in);
 FD_SET(0, &in);
 select(1, &in, ((void*)0), &in, ((void*)0));

 setenv("LESS", "FRSX", 0);
}
