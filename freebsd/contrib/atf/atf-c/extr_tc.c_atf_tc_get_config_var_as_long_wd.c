
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 long atf_tc_get_config_var_as_long (int const*,char const*) ;
 int atf_tc_has_config_var (int const*,char const*) ;

long
atf_tc_get_config_var_as_long_wd(const atf_tc_t *tc, const char *name,
                                 const long defval)
{
    long val;

    if (!atf_tc_has_config_var(tc, name))
        val = defval;
    else
        val = atf_tc_get_config_var_as_long(tc, name);

    return val;
}
