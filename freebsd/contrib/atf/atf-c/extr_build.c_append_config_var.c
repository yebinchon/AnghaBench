
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;
typedef int atf_error_t ;


 int atf_env_get_with_default (char const*,char const*) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_list_append_list (int *,int *) ;
 int atf_text_split (int ,char*,int *) ;

__attribute__((used)) static
atf_error_t
append_config_var(const char *var, const char *default_value, atf_list_t *argv)
{
    atf_error_t err;
    atf_list_t words;

    err = atf_text_split(atf_env_get_with_default(var, default_value),
                         " ", &words);
    if (atf_is_error(err))
        goto out;

    atf_list_append_list(argv, &words);

out:
    return err;
}
