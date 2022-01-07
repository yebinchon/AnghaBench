
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;
typedef int atf_fs_path_t ;


 int RE (int ) ;
 int atf_fs_path_init_fmt (int *,char*,int ,char*) ;
 int atf_tc_get_config_var (int const*,char*) ;

void
get_process_helpers_path(const atf_tc_t *tc, const bool is_detail,
                         atf_fs_path_t *path)
{
    RE(atf_fs_path_init_fmt(path, "%s/%sprocess_helpers",
                            atf_tc_get_config_var(tc, "srcdir"),
                            is_detail ? "" : "detail/"));
}
