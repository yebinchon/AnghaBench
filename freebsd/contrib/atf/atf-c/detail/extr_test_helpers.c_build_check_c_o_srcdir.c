
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;
typedef int atf_fs_path_t ;


 int RE (int ) ;
 int atf_fs_path_cstring (int *) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_init_fmt (int *,char*,int ,char const*) ;
 int atf_tc_get_config_var (int const*,char*) ;
 int build_check_c_o (int ) ;

bool
build_check_c_o_srcdir(const atf_tc_t *tc, const char *sfile)
{
    atf_fs_path_t path;

    RE(atf_fs_path_init_fmt(&path, "%s/%s",
                            atf_tc_get_config_var(tc, "srcdir"), sfile));
    const bool result = build_check_c_o(atf_fs_path_cstring(&path));
    atf_fs_path_fini(&path);
    return result;
}
