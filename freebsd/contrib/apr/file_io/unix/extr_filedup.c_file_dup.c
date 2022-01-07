
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int flags; int filedes; int * pollset; int * pool; int ungetchar; int blocking; int bufsize; scalar_t__ buffer; scalar_t__ buffered; scalar_t__ thlock; int fname; } ;
typedef TYPE_1__ apr_file_t ;


 int APR_EINVAL ;
 int APR_FOPEN_NOCLEANUP ;
 int APR_INHERIT ;
 int APR_SUCCESS ;
 int APR_THREAD_MUTEX_DEFAULT ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int O_CLOEXEC ;
 scalar_t__ apr_palloc (int *,int ) ;
 scalar_t__ apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_register (int *,void*,int ,int ) ;
 int apr_pstrdup (int *,int ) ;
 int apr_thread_mutex_create (scalar_t__*,int ,int *) ;
 int apr_unix_child_file_cleanup ;
 int apr_unix_file_cleanup ;
 int dup (int) ;
 int dup2 (int,int) ;
 int dup3 (int,int,int) ;
 int errno ;
 int fcntl (int,int ,...) ;

__attribute__((used)) static apr_status_t file_dup(apr_file_t **new_file,
                             apr_file_t *old_file, apr_pool_t *p,
                             int which_dup)
{
    int rv;




    if (which_dup == 2) {
        if ((*new_file) == ((void*)0)) {

            return APR_EINVAL;
        }





        rv = dup2(old_file->filedes, (*new_file)->filedes);
        if (!((*new_file)->flags & (APR_FOPEN_NOCLEANUP|APR_INHERIT))) {
            int flags;

            if (rv == -1)
                return errno;

            if ((flags = fcntl((*new_file)->filedes, F_GETFD)) == -1)
                return errno;

            flags |= FD_CLOEXEC;
            if (fcntl((*new_file)->filedes, F_SETFD, flags) == -1)
                return errno;

        }

    } else {
        rv = dup(old_file->filedes);
    }

    if (rv == -1)
        return errno;

    if (which_dup == 1) {
        (*new_file) = (apr_file_t *)apr_pcalloc(p, sizeof(apr_file_t));
        (*new_file)->pool = p;
        (*new_file)->filedes = rv;
    }

    (*new_file)->fname = apr_pstrdup(p, old_file->fname);
    (*new_file)->buffered = old_file->buffered;
    if ((*new_file)->buffered && !(*new_file)->buffer) {
        (*new_file)->buffer = apr_palloc(p, old_file->bufsize);
        (*new_file)->bufsize = old_file->bufsize;
    }


    (*new_file)->blocking = old_file->blocking;


    (*new_file)->ungetchar = old_file->ungetchar;







    if (which_dup == 2) {
        return APR_SUCCESS;
    }






    (*new_file)->flags = old_file->flags
                       & ~(APR_INHERIT | APR_FOPEN_NOCLEANUP);

    apr_pool_cleanup_register((*new_file)->pool, (void *)(*new_file),
                              apr_unix_file_cleanup,
                              apr_unix_child_file_cleanup);




    (*new_file)->pollset = ((void*)0);

    return APR_SUCCESS;
}
