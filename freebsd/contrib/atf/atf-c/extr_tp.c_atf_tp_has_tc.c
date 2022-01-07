
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tp_t ;
typedef int atf_tc_t ;


 int * find_tc (int const*,char const*) ;

bool
atf_tp_has_tc(const atf_tp_t *tp, const char *id)
{
    const atf_tc_t *tc = find_tc(tp, id);
    return tc != ((void*)0);
}
