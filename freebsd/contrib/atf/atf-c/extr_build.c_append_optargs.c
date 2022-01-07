
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;
typedef int atf_error_t ;


 int append_arg1 (int ,int *) ;
 int atf_is_error (int ) ;
 int atf_no_error () ;
 int strdup (char const* const) ;

__attribute__((used)) static
atf_error_t
append_optargs(const char *const optargs[], atf_list_t *argv)
{
    atf_error_t err;

    err = atf_no_error();
    while (*optargs != ((void*)0) && !atf_is_error(err)) {
        err = append_arg1(strdup(*optargs), argv);
        optargs++;
    }

    return err;
}
