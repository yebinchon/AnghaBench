
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int (* omp_privatize_by_reference ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ decls; } ;


 TYPE_2__ lang_hooks ;
 int stub1 (int ) ;

__attribute__((used)) static inline bool
is_reference (tree decl)
{
  return lang_hooks.decls.omp_privatize_by_reference (decl);
}
