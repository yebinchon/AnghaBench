
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct expr* expr; int sym; } ;
struct TYPE_3__ {struct expr* expr; int sym; } ;
struct expr {int type; TYPE_2__ right; TYPE_1__ left; } ;
 int free (struct expr*) ;
 struct expr* malloc (int) ;
 int memcpy (struct expr*,struct expr const*,int) ;
 int printf (char*,int) ;

struct expr *expr_copy(const struct expr *org)
{
 struct expr *e;

 if (!org)
  return ((void*)0);

 e = malloc(sizeof(*org));
 memcpy(e, org, sizeof(*org));
 switch (org->type) {
 case 129:
  e->left = org->left;
  break;
 case 131:
  e->left.expr = expr_copy(org->left.expr);
  break;
 case 133:
 case 128:
  e->left.sym = org->left.sym;
  e->right.sym = org->right.sym;
  break;
 case 134:
 case 130:
 case 132:
  e->left.expr = expr_copy(org->left.expr);
  e->right.expr = expr_copy(org->right.expr);
  break;
 default:
  printf("can't copy type %d\n", e->type);
  free(e);
  e = ((void*)0);
  break;
 }

 return e;
}
