
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct deps {int dummy; } ;
struct TYPE_3__ {struct deps* deps; } ;
typedef TYPE_1__ cpp_reader ;


 struct deps* deps_init () ;

struct deps *
cpp_get_deps (cpp_reader *pfile)
{
  if (!pfile->deps)
    pfile->deps = deps_init ();
  return pfile->deps;
}
