
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tp_t ;
typedef int atf_tc_t ;
typedef int atf_error_t ;


 int PRE (int ) ;
 int atf_tc_run (int const*,char const*) ;
 int * find_tc (int const*,char const*) ;

atf_error_t
atf_tp_run(const atf_tp_t *tp, const char *tcname, const char *resfile)
{
    const atf_tc_t *tc;

    tc = find_tc(tp, tcname);
    PRE(tc != ((void*)0));

    return atf_tc_run(tc, resfile);
}
