
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tc; } ;


 TYPE_1__ Current ;
 int PRE (int ) ;
 int _atf_tc_pass (TYPE_1__*) ;

void
atf_tc_pass(void)
{
    PRE(Current.tc != ((void*)0));

    _atf_tc_pass(&Current);
}
