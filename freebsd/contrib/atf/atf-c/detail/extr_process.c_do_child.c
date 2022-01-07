
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_prepare_t ;
typedef int buf ;
typedef int atf_error_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int UNREACHABLE ;
 int atf_error_format (int ,char*,int) ;
 int atf_error_free (int ) ;
 scalar_t__ atf_is_error (int ) ;
 int child_connect (int const*,int ) ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static
void
do_child(void (*start)(void *),
         void *v,
         const stream_prepare_t *outsp,
         const stream_prepare_t *errsp)
{
    atf_error_t err;

    err = child_connect(outsp, STDOUT_FILENO);
    if (atf_is_error(err))
        goto out;

    err = child_connect(errsp, STDERR_FILENO);
    if (atf_is_error(err))
        goto out;

    start(v);
    UNREACHABLE;

out:
    if (atf_is_error(err)) {
        char buf[1024];

        atf_error_format(err, buf, sizeof(buf));
        fprintf(stderr, "Unhandled error: %s\n", buf);
        atf_error_free(err);

        exit(EXIT_FAILURE);
    } else
        exit(EXIT_SUCCESS);
}
