
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exec_data {char const* const* member_0; } ;
typedef int atf_process_stream_t ;
typedef int atf_process_status_t ;
typedef int atf_process_child_t ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 scalar_t__ atf_is_error (int ) ;
 int atf_process_child_wait (int *,int *) ;
 int atf_process_fork (int *,int ,int *,int *,struct exec_data*) ;
 int atf_process_stream_fini (int *) ;
 int exec_child ;
 int init_sbs (int const*,int *,int const*,int *) ;

__attribute__((used)) static
atf_error_t
fork_and_wait(const char *const *argv, const atf_fs_path_t *outfile,
              const atf_fs_path_t *errfile, atf_process_status_t *status)
{
    atf_error_t err;
    atf_process_child_t child;
    atf_process_stream_t outsb, errsb;
    struct exec_data ea = { argv };

    err = init_sbs(outfile, &outsb, errfile, &errsb);
    if (atf_is_error(err))
        goto out;

    err = atf_process_fork(&child, exec_child, &outsb, &errsb, &ea);
    if (atf_is_error(err))
        goto out_sbs;

    err = atf_process_child_wait(&child, status);

out_sbs:
    atf_process_stream_fini(&errsb);
    atf_process_stream_fini(&outsb);
out:
    return err;
}
