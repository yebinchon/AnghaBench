
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int buffer ;
typedef int atf_error_t ;
typedef int atf_dynstr_t ;


 int EXIT_FAILURE ;
 int atf_dynstr_init_fmt (int *,char*,int,char const*) ;
 int atf_error_format (int ,char*,int) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_tc_fail (char*,char*) ;
 int err (int ,char*,char*) ;

__attribute__((used)) static void
init_out_filename(atf_dynstr_t *name, const pid_t pid, const char *suffix,
                  const bool in_parent)
{
    atf_error_t error;

    error = atf_dynstr_init_fmt(name, "atf_utils_fork_%d_%s.txt",
                                (int)pid, suffix);
    if (atf_is_error(error)) {
        char buffer[1024];
        atf_error_format(error, buffer, sizeof(buffer));
        if (in_parent) {
            atf_tc_fail("Failed to create output file: %s", buffer);
        } else {
            err(EXIT_FAILURE, "Failed to create output file: %s", buffer);
        }
    }
}
