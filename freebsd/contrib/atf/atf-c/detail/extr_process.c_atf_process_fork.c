
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_process_stream_t ;
typedef int atf_process_child_t ;
typedef int atf_error_t ;


 scalar_t__ atf_is_error (int ) ;
 int atf_process_stream_fini (int *) ;
 int fork_with_streams (int *,void (*) (void*),int const*,int const*,void*) ;
 int init_stream_w_default (int const*,int *,int const**) ;

atf_error_t
atf_process_fork(atf_process_child_t *c,
                 void (*start)(void *),
                 const atf_process_stream_t *outsb,
                 const atf_process_stream_t *errsb,
                 void *v)
{
    atf_error_t err;
    atf_process_stream_t inherit_outsb, inherit_errsb;
    const atf_process_stream_t *real_outsb, *real_errsb;

    real_outsb = ((void*)0);
    err = init_stream_w_default(outsb, &inherit_outsb, &real_outsb);
    if (atf_is_error(err))
        goto out;

    real_errsb = ((void*)0);
    err = init_stream_w_default(errsb, &inherit_errsb, &real_errsb);
    if (atf_is_error(err))
        goto out_out;

    err = fork_with_streams(c, start, real_outsb, real_errsb, v);

    if (errsb == ((void*)0))
        atf_process_stream_fini(&inherit_errsb);
out_out:
    if (outsb == ((void*)0))
        atf_process_stream_fini(&inherit_outsb);
out:
    return err;
}
