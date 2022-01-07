
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int skipping; } ;
struct TYPE_6__ {TYPE_1__ state; } ;
typedef TYPE_2__ cpp_reader ;


 int skip_rest_of_line (TYPE_2__*) ;

__attribute__((used)) static void
do_pragma_mark (cpp_reader *pfile)
{
  ++pfile->state.skipping;
  skip_rest_of_line (pfile);
  --pfile->state.skipping;
}
