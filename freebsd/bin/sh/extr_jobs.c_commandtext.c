
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union node {int dummy; } node ;


 scalar_t__ MAXCMDTEXT ;
 char* ckmalloc (scalar_t__) ;
 char* cmdnextc ;
 scalar_t__ cmdnleft ;
 int cmdtxt (union node*) ;

char *
commandtext(union node *n)
{
 char *name;

 cmdnextc = name = ckmalloc(MAXCMDTEXT);
 cmdnleft = MAXCMDTEXT - 4;
 cmdtxt(n);
 *cmdnextc = '\0';
 return name;
}
