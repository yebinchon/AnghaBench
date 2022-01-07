
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_error_t ;


 int atf_is_error (int ) ;
 int atf_no_error () ;
 int atf_no_memory_error () ;
 int free (char*) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char const*,char**) ;

atf_error_t
atf_text_for_each_word(const char *instr, const char *sep,
                       atf_error_t (*func)(const char *, void *),
                       void *data)
{
    atf_error_t err;
    char *str, *str2, *last;

    str = strdup(instr);
    if (str == ((void*)0)) {
        err = atf_no_memory_error();
        goto out;
    }

    err = atf_no_error();
    str2 = strtok_r(str, sep, &last);
    while (str2 != ((void*)0) && !atf_is_error(err)) {
        err = func(str2, data);
        str2 = strtok_r(((void*)0), sep, &last);
    }

    free(str);
out:
    return err;
}
