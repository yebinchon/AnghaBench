
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;
typedef int atf_error_t ;
typedef int atf_dynstr_t ;


 int INV (int) ;
 int atf_dynstr_fini_disown (int *) ;
 int atf_dynstr_init_raw (int *,char const*,int) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_list_append (int *,int ,int) ;
 int atf_list_fini (int *) ;
 int atf_list_init (int *) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

atf_error_t
atf_text_split(const char *str, const char *delim, atf_list_t *words)
{
    atf_error_t err;
    const char *end;
    const char *iter;

    err = atf_list_init(words);
    if (atf_is_error(err))
        goto err;

    end = str + strlen(str);
    INV(*end == '\0');
    iter = str;
    while (iter < end) {
        const char *ptr;

        INV(iter != ((void*)0));
        ptr = strstr(iter, delim);
        if (ptr == ((void*)0))
            ptr = end;

        INV(ptr >= iter);
        if (ptr > iter) {
            atf_dynstr_t word;

            err = atf_dynstr_init_raw(&word, iter, ptr - iter);
            if (atf_is_error(err))
                goto err_list;

            err = atf_list_append(words, atf_dynstr_fini_disown(&word), 1);
            if (atf_is_error(err))
                goto err_list;
        }

        iter = ptr + strlen(delim);
    }

    INV(!atf_is_error(err));
    return err;

err_list:
    atf_list_fini(words);
err:
    return err;
}
