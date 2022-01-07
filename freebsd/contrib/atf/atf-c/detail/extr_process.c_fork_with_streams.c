
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_prepare_t ;
typedef int pid_t ;
typedef int atf_process_stream_t ;
typedef int atf_process_child_t ;
typedef int atf_error_t ;


 int UNREACHABLE ;
 int abort () ;
 scalar_t__ atf_is_error (int ) ;
 int atf_libc_error (int ,char*) ;
 int atf_no_error () ;
 int do_child (void (*) (void*),void*,int *,int *) ;
 int do_parent (int *,int,int *,int *) ;
 int errno ;
 int fork () ;
 int stream_prepare_fini (int *) ;
 int stream_prepare_init (int *,int const*) ;

__attribute__((used)) static
atf_error_t
fork_with_streams(atf_process_child_t *c,
                  void (*start)(void *),
                  const atf_process_stream_t *outsb,
                  const atf_process_stream_t *errsb,
                  void *v)
{
    atf_error_t err;
    stream_prepare_t outsp;
    stream_prepare_t errsp;
    pid_t pid;

    err = stream_prepare_init(&outsp, outsb);
    if (atf_is_error(err))
        goto out;

    err = stream_prepare_init(&errsp, errsb);
    if (atf_is_error(err))
        goto err_outpipe;

    pid = fork();
    if (pid == -1) {
        err = atf_libc_error(errno, "Failed to fork");
        goto err_errpipe;
    }

    if (pid == 0) {
        do_child(start, v, &outsp, &errsp);
        UNREACHABLE;
        abort();
        err = atf_no_error();
    } else {
        err = do_parent(c, pid, &outsp, &errsp);
        if (atf_is_error(err))
            goto err_errpipe;
    }

    goto out;

err_errpipe:
    stream_prepare_fini(&errsp);
err_outpipe:
    stream_prepare_fini(&outsp);

out:
    return err;
}
