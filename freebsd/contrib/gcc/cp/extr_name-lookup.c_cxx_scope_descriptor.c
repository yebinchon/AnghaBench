
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t scope_kind ;
struct TYPE_3__ {size_t kind; scalar_t__ explicit_spec_p; } ;
typedef TYPE_1__ cxx_scope ;


 size_t sk_template_spec ;

__attribute__((used)) static const char *
cxx_scope_descriptor (cxx_scope *scope)
{


  static const char* scope_kind_names[] = {
    "block-scope",
    "cleanup-scope",
    "try-scope",
    "catch-scope",
    "for-scope",
    "function-parameter-scope",
    "class-scope",
    "namespace-scope",
    "template-parameter-scope",
    "template-explicit-spec-scope"
  };
  const scope_kind kind = scope->explicit_spec_p
    ? sk_template_spec : scope->kind;

  return scope_kind_names[kind];
}
