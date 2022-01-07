
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ apr_status_t ;
struct TYPE_3__ {int filedes; int flags; int * pollset; scalar_t__ thlock; int fname; } ;
typedef TYPE_1__ apr_file_t ;


 int APR_FOPEN_DELONCLOSE ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_pollset_destroy (int *) ;
 scalar_t__ apr_thread_mutex_destroy (scalar_t__) ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;
 int unlink (int ) ;

__attribute__((used)) static apr_status_t file_cleanup(apr_file_t *file, int is_child)
{
    apr_status_t rv = APR_SUCCESS;
    int fd = file->filedes;




    file->filedes = -1;

    if (close(fd) == 0) {

        if (!is_child && (file->flags & APR_FOPEN_DELONCLOSE)) {
            unlink(file->fname);
        }





    }
    else {

        file->filedes = fd;


        rv = errno;
    }

    if (file->pollset != ((void*)0)) {
        apr_status_t pollset_rv = apr_pollset_destroy(file->pollset);



        if (rv == APR_SUCCESS) {
            rv = pollset_rv;
        }
    }

    return rv;
}
