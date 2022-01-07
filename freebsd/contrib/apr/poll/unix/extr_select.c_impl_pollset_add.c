
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_13__ {size_t nelts; size_t nalloc; int flags; TYPE_4__* p; TYPE_2__** wakeup_pipe; } ;
typedef TYPE_5__ apr_pollset_t ;
struct TYPE_11__ {TYPE_2__* f; TYPE_1__* s; } ;
struct TYPE_14__ {scalar_t__ desc_type; int reqevents; TYPE_3__ desc; } ;
typedef TYPE_6__ apr_pollfd_t ;
typedef scalar_t__ apr_os_sock_t ;
struct TYPE_12__ {int maxfd; int exceptset; int writeset; int readset; scalar_t__ set_type; TYPE_6__* query_set; } ;
struct TYPE_10__ {scalar_t__ filedes; scalar_t__ is_pipe; } ;
struct TYPE_9__ {scalar_t__ socketdes; } ;


 int APR_EBADF ;
 int APR_ENOMEM ;
 int APR_POLLERR ;
 int APR_POLLHUP ;
 int APR_POLLIN ;
 int APR_POLLNVAL ;
 int APR_POLLOUT ;
 int APR_POLLPRI ;
 int APR_POLLSET_WAKEABLE ;
 scalar_t__ APR_POLL_FILE ;
 scalar_t__ APR_POLL_SOCKET ;
 int APR_SUCCESS ;
 int FD_SET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 scalar_t__ HAS_PIPES (scalar_t__) ;
 int HAS_SOCKETS (scalar_t__) ;

__attribute__((used)) static apr_status_t impl_pollset_add(apr_pollset_t *pollset,
                                     const apr_pollfd_t *descriptor)
{
    apr_os_sock_t fd;

    if (pollset->nelts == pollset->nalloc) {
        return APR_ENOMEM;
    }

    pollset->p->query_set[pollset->nelts] = *descriptor;

    if (descriptor->desc_type == APR_POLL_SOCKET) {
        fd = descriptor->desc.s->socketdes;
    }
    else {

        if ((pollset->flags & APR_POLLSET_WAKEABLE) &&
            descriptor->desc.f == pollset->wakeup_pipe[0])
            fd = (apr_os_sock_t)descriptor->desc.f->filedes;
        else
            return APR_EBADF;
    }

    if (fd >= FD_SETSIZE) {

        return APR_EBADF;
    }

    if (descriptor->reqevents & APR_POLLIN) {
        FD_SET(fd, &(pollset->p->readset));
    }
    if (descriptor->reqevents & APR_POLLOUT) {
        FD_SET(fd, &(pollset->p->writeset));
    }
    if (descriptor->reqevents &
        (APR_POLLPRI | APR_POLLERR | APR_POLLHUP | APR_POLLNVAL)) {
        FD_SET(fd, &(pollset->p->exceptset));
    }
    if ((int) fd > pollset->p->maxfd) {
        pollset->p->maxfd = (int) fd;
    }
    pollset->nelts++;
    return APR_SUCCESS;
}
