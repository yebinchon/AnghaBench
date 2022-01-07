
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tc; } ;


 TYPE_1__ Current ;
 int PRE (int ) ;
 int _atf_tc_require_prog (TYPE_1__*,char const*) ;

void
atf_tc_require_prog(const char *prog)
{
    PRE(Current.tc != ((void*)0));

    _atf_tc_require_prog(&Current, prog);
}
