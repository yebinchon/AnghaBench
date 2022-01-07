
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct narg {int text; TYPE_1__* next; } ;
struct TYPE_2__ {struct narg narg; } ;


 int isfunc (char*) ;
 scalar_t__ mustexpandto (int ,char*) ;

__attribute__((used)) static int
isdeclarationcmd(struct narg *arg)
{
 int have_command = 0;

 if (arg == ((void*)0))
  return (0);
 while (mustexpandto(arg->text, "command")) {
  have_command = 1;
  arg = &arg->next->narg;
  if (arg == ((void*)0))
   return (0);






 }
 return (mustexpandto(arg->text, "export") ||
     mustexpandto(arg->text, "readonly") ||
     (mustexpandto(arg->text, "local") &&
  (have_command || !isfunc("local"))));
}
