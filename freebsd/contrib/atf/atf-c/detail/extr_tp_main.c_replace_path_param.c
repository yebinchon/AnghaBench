
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int atf_fs_path_fini (int *) ;
 int atf_fs_path_init_fmt (int *,char*,char const*) ;
 int atf_is_error (int ) ;

__attribute__((used)) static
atf_error_t
replace_path_param(atf_fs_path_t *param, const char *value)
{
    atf_error_t err;
    atf_fs_path_t temp;

    err = atf_fs_path_init_fmt(&temp, "%s", value);
    if (!atf_is_error(err)) {
        atf_fs_path_fini(param);
        *param = temp;
    }

    return err;
}
