
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_map_t ;
typedef int atf_error_t ;


 int EINVAL ;
 int INV (int ) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_libc_error (int ,char*,char const*) ;
 int atf_map_fini (int *) ;
 int atf_map_init (int *) ;
 int atf_map_insert (int *,char const*,int ,int) ;
 int strdup (char const*) ;

atf_error_t
atf_map_init_charpp(atf_map_t *m, const char *const *array)
{
    atf_error_t err;
    const char *const *ptr = array;

    err = atf_map_init(m);
    if (array != ((void*)0)) {
        while (!atf_is_error(err) && *ptr != ((void*)0)) {
            const char *key, *value;

            key = *ptr;
            INV(key != ((void*)0));
            ptr++;

            if ((value = *ptr) == ((void*)0)) {
                err = atf_libc_error(EINVAL, "List too short; no value for "
                    "key '%s' provided", key);
                break;
            }
            ptr++;

            err = atf_map_insert(m, key, strdup(value), 1);
        }
    }

    if (atf_is_error(err))
        atf_map_fini(m);

    return err;
}
