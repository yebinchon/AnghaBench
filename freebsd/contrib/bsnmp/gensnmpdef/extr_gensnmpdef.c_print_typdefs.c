
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nodekind; } ;
typedef TYPE_1__ SmiNode ;






 int print_stype (TYPE_1__*) ;
 int save_node (TYPE_1__*) ;
 TYPE_1__* smiGetFirstChildNode (TYPE_1__*) ;
 TYPE_1__* smiGetNextChildNode (TYPE_1__*) ;

__attribute__((used)) static void
print_typdefs(SmiNode *n)
{
 SmiNode *p;

 p = n;
 n = smiGetFirstChildNode(n);
 while (n != ((void*)0)) {
  switch (n->nodekind) {
    case 128:
    case 131:
   print_stype(n);
   break;
    case 130:
      case 129:
   save_node(n);
   return;
    default:
   break;
  }
  n = smiGetNextChildNode(n);
 }

 save_node(p);
}
