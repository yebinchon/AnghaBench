
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_h_tc_data {char const* member_1; int * member_0; } ;
typedef int atf_tc_t ;
typedef int atf_process_stream_t ;
typedef int atf_process_status_t ;
typedef int atf_process_child_t ;
typedef int atf_fs_path_t ;


 int ATF_CHECK (int ) ;
 int RE (int ) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_init_fmt (int *,char const*) ;
 int atf_process_child_wait (int *,int *) ;
 int atf_process_fork (int *,int ,int *,int *,struct run_h_tc_data*) ;
 int atf_process_status_exited (int *) ;
 int atf_process_status_fini (int *) ;
 int atf_process_stream_fini (int *) ;
 int atf_process_stream_init_redirect_path (int *,int *) ;
 int run_h_tc_child ;

void
run_h_tc(atf_tc_t *tc, const char *outname, const char *errname,
         const char *resname)
{
    atf_fs_path_t outpath, errpath;
    atf_process_stream_t outb, errb;
    atf_process_child_t child;
    atf_process_status_t status;

    RE(atf_fs_path_init_fmt(&outpath, outname));
    RE(atf_fs_path_init_fmt(&errpath, errname));

    struct run_h_tc_data data = { tc, resname };

    RE(atf_process_stream_init_redirect_path(&outb, &outpath));
    RE(atf_process_stream_init_redirect_path(&errb, &errpath));
    RE(atf_process_fork(&child, run_h_tc_child, &outb, &errb, &data));
    atf_process_stream_fini(&errb);
    atf_process_stream_fini(&outb);

    RE(atf_process_child_wait(&child, &status));
    ATF_CHECK(atf_process_status_exited(&status));
    atf_process_status_fini(&status);

    atf_fs_path_fini(&errpath);
    atf_fs_path_fini(&outpath);
}
