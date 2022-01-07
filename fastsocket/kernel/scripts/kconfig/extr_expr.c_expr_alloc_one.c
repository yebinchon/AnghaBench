
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct expr* expr; } ;
struct expr {int type; TYPE_1__ left; } ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;


 struct expr* malloc (int) ;
 int memset (struct expr*,int ,int) ;

struct expr *expr_alloc_one(enum expr_type type, struct expr *ce)
{
 struct expr *e = malloc(sizeof(*e));
 memset(e, 0, sizeof(*e));
 e->type = type;
 e->left.expr = ce;
 return e;
}
