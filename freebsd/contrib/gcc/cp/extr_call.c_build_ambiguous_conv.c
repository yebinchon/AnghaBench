
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_5__ {void* expr; } ;
struct TYPE_6__ {TYPE_1__ u; void* type; } ;
typedef TYPE_2__ conversion ;


 TYPE_2__* alloc_conversion (int ) ;
 int ck_ambig ;

__attribute__((used)) static conversion *
build_ambiguous_conv (tree type, tree expr)
{
  conversion *c;

  c = alloc_conversion (ck_ambig);
  c->type = type;
  c->u.expr = expr;

  return c;
}
