
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;
typedef int atf_error_t ;


 int append_arg1 (char const*,int *) ;
 int atf_is_error (int ) ;

__attribute__((used)) static
atf_error_t
append_arg2(const char *flag, const char *arg, atf_list_t *argv)
{
    atf_error_t err;

    err = append_arg1(flag, argv);
    if (!atf_is_error(err))
        err = append_arg1(arg, argv);

    return err;
}
