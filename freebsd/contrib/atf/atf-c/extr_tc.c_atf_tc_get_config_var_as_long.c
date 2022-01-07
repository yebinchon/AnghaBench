
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;
typedef int atf_error_t ;


 int atf_error_free (int ) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_tc_fail (char*,char const*,char const*) ;
 char* atf_tc_get_config_var (int const*,char const*) ;
 int atf_text_to_long (char const*,long*) ;

long
atf_tc_get_config_var_as_long(const atf_tc_t *tc, const char *name)
{
    long val;
    const char *strval;
    atf_error_t err;

    strval = atf_tc_get_config_var(tc, name);
    err = atf_text_to_long(strval, &val);
    if (atf_is_error(err)) {
        atf_error_free(err);
        atf_tc_fail("Configuration variable %s does not have a valid "
                    "long value; found %s", name, strval);
    }

    return val;
}
