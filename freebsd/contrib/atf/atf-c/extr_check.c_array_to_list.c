
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;
typedef int atf_error_t ;


 scalar_t__ atf_is_error (int ) ;
 int atf_list_append (int *,char*,int) ;
 int atf_list_init (int *) ;
 int atf_no_memory_error () ;
 char* strdup (char const* const) ;

__attribute__((used)) static
atf_error_t
array_to_list(const char *const *a, atf_list_t *l)
{
    atf_error_t err;

    err = atf_list_init(l);
    if (atf_is_error(err))
        goto out;

    while (*a != ((void*)0)) {
        char *item = strdup(*a);
        if (item == ((void*)0)) {
            err = atf_no_memory_error();
            goto out;
        }

        err = atf_list_append(l, item, 1);
        if (atf_is_error(err))
            goto out;

        a++;
    }

out:
    return err;
}
