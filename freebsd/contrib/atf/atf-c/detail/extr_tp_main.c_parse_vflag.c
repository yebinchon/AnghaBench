
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_map_t ;
typedef int atf_error_t ;


 int atf_map_insert (int *,char*,char*,int) ;
 char* strchr (char*,char) ;
 int usage_error (char*) ;

__attribute__((used)) static
atf_error_t
parse_vflag(char *arg, atf_map_t *config)
{
    atf_error_t err;
    char *split;

    split = strchr(arg, '=');
    if (split == ((void*)0)) {
        err = usage_error("-v requires an argument of the form var=value");
        goto out;
    }

    *split = '\0';
    split++;

    err = atf_map_insert(config, arg, split, 0);

out:
    return err;
}
