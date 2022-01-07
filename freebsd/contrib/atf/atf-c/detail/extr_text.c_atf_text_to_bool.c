
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_error_t ;


 int EINVAL ;
 int atf_libc_error (int ,char*,char const*) ;
 int atf_no_error () ;
 scalar_t__ strcasecmp (char const*,char*) ;

atf_error_t
atf_text_to_bool(const char *str, bool *b)
{
    atf_error_t err;

    if (strcasecmp(str, "yes") == 0 ||
        strcasecmp(str, "true") == 0) {
        *b = 1;
        err = atf_no_error();
    } else if (strcasecmp(str, "no") == 0 ||
               strcasecmp(str, "false") == 0) {
        *b = 0;
        err = atf_no_error();
    } else {

        err = atf_libc_error(EINVAL, "Cannot convert string '%s' "
                             "to boolean", str);
    }

    return err;
}
