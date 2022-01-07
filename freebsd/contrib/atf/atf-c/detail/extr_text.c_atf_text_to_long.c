
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_error_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 long LONG_MAX ;
 long LONG_MIN ;
 int atf_libc_error (scalar_t__,char*,char const*) ;
 int atf_no_error () ;
 scalar_t__ errno ;
 long strtol (char const*,char**,int) ;

atf_error_t
atf_text_to_long(const char *str, long *l)
{
    atf_error_t err;
    char *endptr;
    long tmp;

    errno = 0;
    tmp = strtol(str, &endptr, 10);
    if (str[0] == '\0' || *endptr != '\0')
        err = atf_libc_error(EINVAL, "'%s' is not a number", str);
    else if (errno == ERANGE || (tmp == LONG_MAX || tmp == LONG_MIN))
        err = atf_libc_error(ERANGE, "'%s' is out of range", str);
    else {
        *l = tmp;
        err = atf_no_error();
    }

    return err;
}
