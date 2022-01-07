
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;
typedef int atf_fs_path_t ;
typedef int atf_check_result_t ;


 int RE (int ) ;
 int atf_check_exec_array (char const**,int *) ;
 char* atf_fs_path_cstring (int *) ;
 int atf_fs_path_fini (int *) ;
 int get_process_helpers_path (int const*,int,int *) ;
 int printf (char*,char const*,char const*) ;

__attribute__((used)) static
void
do_exec(const atf_tc_t *tc, const char *helper_name, atf_check_result_t *r)
{
    atf_fs_path_t process_helpers;
    const char *argv[3];

    get_process_helpers_path(tc, 0, &process_helpers);

    argv[0] = atf_fs_path_cstring(&process_helpers);
    argv[1] = helper_name;
    argv[2] = ((void*)0);
    printf("Executing %s %s\n", argv[0], argv[1]);
    RE(atf_check_exec_array(argv, r));

    atf_fs_path_fini(&process_helpers);
}
