
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct TYPE_2__ {struct symbol* sym; } ;
struct expr {TYPE_1__ left; int type; } ;


 int E_SYMBOL ;
 struct expr* malloc (int) ;
 int memset (struct expr*,int ,int) ;

struct expr *expr_alloc_symbol(struct symbol *sym)
{
 struct expr *e = malloc(sizeof(*e));
 memset(e, 0, sizeof(*e));
 e->type = E_SYMBOL;
 e->left.sym = sym;
 return e;
}
