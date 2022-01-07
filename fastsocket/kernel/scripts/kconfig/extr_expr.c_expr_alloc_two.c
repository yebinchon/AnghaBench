
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ right; TYPE_1__ left; } ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;


 struct expr* malloc (int) ;
 int memset (struct expr*,int ,int) ;

struct expr *expr_alloc_two(enum expr_type type, struct expr *e1, struct expr *e2)
{
 struct expr *e = malloc(sizeof(*e));
 memset(e, 0, sizeof(*e));
 e->type = type;
 e->left.expr = e1;
 e->right.expr = e2;
 return e;
}
