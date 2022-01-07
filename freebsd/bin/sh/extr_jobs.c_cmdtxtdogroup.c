
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union node {int dummy; } node ;


 int cmdputs (char*) ;
 int cmdtxt (union node*) ;

__attribute__((used)) static void
cmdtxtdogroup(union node *n)
{
 cmdputs("; do ");
 cmdtxt(n);
 cmdputs("; done");
}
