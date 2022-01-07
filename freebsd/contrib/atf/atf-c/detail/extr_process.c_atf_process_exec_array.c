
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exec_args {char const* const* member_1; void (* member_2 ) () ;int const* member_0; } ;
typedef int atf_process_stream_t ;
typedef int atf_process_status_t ;
typedef int atf_process_child_t ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 scalar_t__ EINTR ;
 int INV (int) ;
 int PRE (int) ;
 int atf_error_free (int ) ;
 scalar_t__ atf_error_is (int ,char*) ;
 scalar_t__ atf_is_error (int ) ;
 scalar_t__ atf_libc_error_code (int ) ;
 int atf_process_child_wait (int *,int *) ;
 int atf_process_fork (int *,int ,int const*,int const*,struct exec_args*) ;
 scalar_t__ atf_process_stream_type (int const*) ;
 scalar_t__ atf_process_stream_type_capture ;
 int do_exec ;

atf_error_t
atf_process_exec_array(atf_process_status_t *s,
                       const atf_fs_path_t *prog,
                       const char *const *argv,
                       const atf_process_stream_t *outsb,
                       const atf_process_stream_t *errsb,
                       void (*prehook)(void))
{
    atf_error_t err;
    atf_process_child_t c;
    struct exec_args ea = { prog, argv, prehook };

    PRE(outsb == ((void*)0) ||
        atf_process_stream_type(outsb) != atf_process_stream_type_capture);
    PRE(errsb == ((void*)0) ||
        atf_process_stream_type(errsb) != atf_process_stream_type_capture);

    err = atf_process_fork(&c, do_exec, outsb, errsb, &ea);
    if (atf_is_error(err))
        goto out;

again:
    err = atf_process_child_wait(&c, s);
    if (atf_is_error(err)) {
        INV(atf_error_is(err, "libc") && atf_libc_error_code(err) == EINTR);
        atf_error_free(err);
        goto again;
    }

out:
    return err;
}
