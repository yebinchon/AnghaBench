
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int atf_error_t ;


 int abort () ;
 int atf_error_format (int ,char*,int) ;
 int atf_error_free (int ) ;
 scalar_t__ atf_is_error (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
check_fatal_error(atf_error_t err)
{
    if (atf_is_error(err)) {
        char buf[1024];
        atf_error_format(err, buf, sizeof(buf));
        fprintf(stderr, "FATAL ERROR: %s\n", buf);
        atf_error_free(err);
        abort();
    }
}
