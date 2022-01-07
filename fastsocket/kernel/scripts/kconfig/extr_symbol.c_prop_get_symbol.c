
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct property {TYPE_2__* expr; } ;
struct TYPE_3__ {struct symbol* sym; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ left; } ;


 scalar_t__ E_LIST ;
 scalar_t__ E_SYMBOL ;

struct symbol *prop_get_symbol(struct property *prop)
{
 if (prop->expr && (prop->expr->type == E_SYMBOL ||
      prop->expr->type == E_LIST))
  return prop->expr->left.sym;
 return ((void*)0);
}
