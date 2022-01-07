
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_process_stream_t ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 scalar_t__ atf_is_error (int ) ;
 int atf_process_stream_fini (int *) ;
 int init_sb (int const*,int *) ;

__attribute__((used)) static
atf_error_t
init_sbs(const atf_fs_path_t *outfile, atf_process_stream_t *outsb,
         const atf_fs_path_t *errfile, atf_process_stream_t *errsb)
{
    atf_error_t err;

    err = init_sb(outfile, outsb);
    if (atf_is_error(err))
        goto out;

    err = init_sb(errfile, errsb);
    if (atf_is_error(err)) {
        atf_process_stream_fini(outsb);
        goto out;
    }

out:
    return err;
}
