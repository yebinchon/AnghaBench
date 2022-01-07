
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tc_part { ____Placeholder_tc_part } tc_part ;
typedef int atf_error_t ;


 int BODY ;
 int CLEANUP ;
 int atf_no_error () ;
 int atf_no_memory_error () ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int usage_error (char*,char*) ;

__attribute__((used)) static
atf_error_t
handle_tcarg(const char *tcarg, char **tcname, enum tc_part *tcpart)
{
    atf_error_t err;

    err = atf_no_error();

    *tcname = strdup(tcarg);
    if (*tcname == ((void*)0)) {
        err = atf_no_memory_error();
        goto out;
    }

    char *delim = strchr(*tcname, ':');
    if (delim != ((void*)0)) {
        *delim = '\0';

        delim++;
        if (strcmp(delim, "body") == 0) {
            *tcpart = BODY;
        } else if (strcmp(delim, "cleanup") == 0) {
            *tcpart = CLEANUP;
        } else {
            err = usage_error("Invalid test case part `%s'", delim);
            goto out;
        }
    }

out:
    return err;
}
