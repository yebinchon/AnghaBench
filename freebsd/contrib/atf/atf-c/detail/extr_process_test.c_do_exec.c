
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;
typedef int atf_process_status_t ;
typedef int atf_fs_path_t ;


 int RE (int ) ;
 char* atf_fs_path_cstring (int *) ;
 int atf_fs_path_fini (int *) ;
 int atf_process_exec_array (int *,int *,char const**,int *,int *,void (*) ()) ;
 int get_process_helpers_path (int const*,int,int *) ;
 int printf (char*,char const*,char const*) ;

__attribute__((used)) static
void
do_exec(const atf_tc_t *tc, const char *helper_name, atf_process_status_t *s,
        void (*prehook)(void))
{
    atf_fs_path_t process_helpers;
    const char *argv[3];

    get_process_helpers_path(tc, 1, &process_helpers);

    argv[0] = atf_fs_path_cstring(&process_helpers);
    argv[1] = helper_name;
    argv[2] = ((void*)0);
    printf("Executing %s %s\n", argv[0], argv[1]);

    RE(atf_process_exec_array(s, &process_helpers, argv, ((void*)0), ((void*)0), prehook));
    atf_fs_path_fini(&process_helpers);
}
