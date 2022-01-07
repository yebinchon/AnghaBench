
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_8__ {int nodekind; } ;
typedef TYPE_1__ SmiNode ;
 int errx (int,char*,int) ;
 int print_node (TYPE_1__*,int ) ;
 int print_notification (TYPE_1__*,int ) ;
 int print_scalar (TYPE_1__*,int ) ;
 int print_table (TYPE_1__*,int ) ;
 int save_node (TYPE_1__*) ;

__attribute__((used)) static void
print_it(SmiNode *n, u_int level)
{
 switch (n->nodekind) {

   case 131:
  print_node(n, level);
  break;

   case 129:
  print_scalar(n, level);
  break;

   case 128:
  print_table(n, level);
  break;

   case 133:
   case 132:
  save_node(n);
  break;

   case 130:
  print_notification(n, level);
  break;

   default:
  errx(1, "cannot handle %u nodes", n->nodekind);
 }
}
