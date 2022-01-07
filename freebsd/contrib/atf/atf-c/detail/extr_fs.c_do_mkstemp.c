
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_error_t ;


 int PRE (int ) ;
 int atf_libc_error (int ,char*,char*) ;
 int atf_no_error () ;
 int errno ;
 int mkstemp (char*) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static
atf_error_t
do_mkstemp(char *tmpl, int *fdout)
{
    atf_error_t err;

    PRE(strstr(tmpl, "XXXXXX") != ((void*)0));

    *fdout = mkstemp(tmpl);
    if (*fdout == -1)
        err = atf_libc_error(errno, "Cannot create temporary file "
                             "with template '%s'", tmpl);

    else
        err = atf_no_error();

    return err;
}
