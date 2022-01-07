
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_error_t ;
typedef int atf_dynstr_t ;


 int PRE (int) ;
 int atf_dynstr_append_fmt (int *,char*,...) ;
 scalar_t__ atf_dynstr_length (int *) ;
 int atf_is_error (int ) ;
 int atf_no_error () ;
 scalar_t__ strlen (char const*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static
atf_error_t
normalize(atf_dynstr_t *d, char *p)
{
    const char *ptr;
    char *last;
    atf_error_t err;
    bool first;

    PRE(strlen(p) > 0);
    PRE(atf_dynstr_length(d) == 0);

    if (p[0] == '/')
        err = atf_dynstr_append_fmt(d, "/");
    else
        err = atf_no_error();

    first = 1;
    last = ((void*)0);
    ptr = strtok_r(p, "/", &last);
    while (!atf_is_error(err) && ptr != ((void*)0)) {
        if (strlen(ptr) > 0) {
            err = atf_dynstr_append_fmt(d, "%s%s", first ? "" : "/", ptr);
            first = 0;
        }

        ptr = strtok_r(((void*)0), "/", &last);
    }

    return err;
}
