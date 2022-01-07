
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int ch ;
typedef int atf_error_t ;
typedef int atf_dynstr_t ;


 int ATF_REQUIRE (int) ;
 int atf_dynstr_append_fmt (int *,char*,char) ;
 int atf_dynstr_fini (int *) ;
 char* atf_dynstr_fini_disown (int *) ;
 int atf_dynstr_init (int *) ;
 scalar_t__ atf_dynstr_length (int *) ;
 int atf_is_error (int ) ;
 int read (int const,char*,int) ;

char *
atf_utils_readline(const int fd)
{
    char ch;
    ssize_t cnt;
    atf_dynstr_t temp;
    atf_error_t error;

    error = atf_dynstr_init(&temp);
    ATF_REQUIRE(!atf_is_error(error));

    while ((cnt = read(fd, &ch, sizeof(ch))) == sizeof(ch) &&
           ch != '\n') {
        error = atf_dynstr_append_fmt(&temp, "%c", ch);
        ATF_REQUIRE(!atf_is_error(error));
    }
    ATF_REQUIRE(cnt != -1);

    if (cnt == 0 && atf_dynstr_length(&temp) == 0) {
        atf_dynstr_fini(&temp);
        return ((void*)0);
    } else
        return atf_dynstr_fini_disown(&temp);
}
