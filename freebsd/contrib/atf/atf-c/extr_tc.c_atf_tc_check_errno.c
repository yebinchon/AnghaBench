
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tc; } ;


 TYPE_1__ Current ;
 int PRE (int ) ;
 int _atf_tc_check_errno (TYPE_1__*,char const*,size_t const,int const,char const*,int const) ;

void
atf_tc_check_errno(const char *file, const size_t line, const int exp_errno,
                   const char *expr_str, const bool expr_result)
{
    PRE(Current.tc != ((void*)0));

    _atf_tc_check_errno(&Current, file, line, exp_errno, expr_str,
                        expr_result);
}
