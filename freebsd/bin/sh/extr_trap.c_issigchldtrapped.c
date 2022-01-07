
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIGCHLD ;
 char** trap ;

int
issigchldtrapped(void)
{

 return (trap[SIGCHLD] != ((void*)0) && *trap[SIGCHLD] != '\0');
}
