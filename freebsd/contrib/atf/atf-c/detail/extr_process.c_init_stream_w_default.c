
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_process_stream_t ;
typedef int atf_error_t ;


 int atf_is_error (int ) ;
 int atf_no_error () ;
 int atf_process_stream_init_inherit (int *) ;

__attribute__((used)) static
atf_error_t
init_stream_w_default(const atf_process_stream_t *usersb,
                      atf_process_stream_t *inheritsb,
                      const atf_process_stream_t **realsb)
{
    atf_error_t err;

    if (usersb == ((void*)0)) {
        err = atf_process_stream_init_inherit(inheritsb);
        if (!atf_is_error(err))
            *realsb = inheritsb;
    } else {
        err = atf_no_error();
        *realsb = usersb;
    }

    return err;
}
