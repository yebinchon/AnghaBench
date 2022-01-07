
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct TYPE_4__ {struct symbol* sym; } ;
struct TYPE_3__ {struct symbol* sym; } ;
struct expr {int type; TYPE_2__ right; TYPE_1__ left; } ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;


 struct expr* malloc (int) ;
 int memset (struct expr*,int ,int) ;

struct expr *expr_alloc_comp(enum expr_type type, struct symbol *s1, struct symbol *s2)
{
 struct expr *e = malloc(sizeof(*e));
 memset(e, 0, sizeof(*e));
 e->type = type;
 e->left.sym = s1;
 e->right.sym = s2;
 return e;
}
