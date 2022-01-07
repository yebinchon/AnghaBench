
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Fatal (char*,int,char*) ;

void
Finish(int errors)

{
 Fatal("%d error%s", errors, errors == 1 ? "" : "s");
}
