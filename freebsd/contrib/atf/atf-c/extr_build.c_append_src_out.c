
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;
typedef int atf_error_t ;


 int append_arg1 (char const*,int *) ;
 int append_arg2 (char*,char const*,int *) ;
 scalar_t__ atf_is_error (int ) ;

__attribute__((used)) static
atf_error_t
append_src_out(const char *src, const char *obj, atf_list_t *argv)
{
    atf_error_t err;

    err = append_arg2("-o", obj, argv);
    if (atf_is_error(err))
        goto out;

    err = append_arg1("-c", argv);
    if (atf_is_error(err))
        goto out;

    err = append_arg1(src, argv);

out:
    return err;
}
