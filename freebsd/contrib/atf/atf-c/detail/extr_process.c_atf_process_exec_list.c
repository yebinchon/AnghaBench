
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_process_stream_t ;
typedef int atf_process_status_t ;
typedef int atf_list_t ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int PRE (int) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_process_exec_array (int *,int const*,char const**,int const*,int const*,void (*) ()) ;
 scalar_t__ atf_process_stream_type (int const*) ;
 scalar_t__ atf_process_stream_type_capture ;
 int free (char const**) ;
 int list_to_array (int const*,char const***) ;

atf_error_t
atf_process_exec_list(atf_process_status_t *s,
                      const atf_fs_path_t *prog,
                      const atf_list_t *argv,
                      const atf_process_stream_t *outsb,
                      const atf_process_stream_t *errsb,
                      void (*prehook)(void))
{
    atf_error_t err;
    const char **argv2;

    PRE(outsb == ((void*)0) ||
        atf_process_stream_type(outsb) != atf_process_stream_type_capture);
    PRE(errsb == ((void*)0) ||
        atf_process_stream_type(errsb) != atf_process_stream_type_capture);

    argv2 = ((void*)0);
    err = list_to_array(argv, &argv2);
    if (atf_is_error(err))
        goto out;

    err = atf_process_exec_array(s, prog, argv2, outsb, errsb, prehook);

    free(argv2);
out:
    return err;
}
