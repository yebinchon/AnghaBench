
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ apr_status_t ;
struct TYPE_2__ {int pool; int * filename; int base; int shmid; int realsize; } ;
typedef TYPE_1__ apr_shm_t ;


 scalar_t__ APR_ENOTIMPL ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int F_OK ;
 int IPC_RMID ;
 scalar_t__ access (int *,int ) ;
 scalar_t__ apr_file_remove (int *,int ) ;
 scalar_t__ errno ;
 int make_shm_open_safe_name (int *,int ) ;
 int munmap (int ,int ) ;
 int shm_unlink (int ) ;
 int shmctl (int ,int ,int *) ;
 int shmdt (int ) ;

__attribute__((used)) static apr_status_t shm_cleanup_owner(void *m_)
{
    apr_shm_t *m = (apr_shm_t *)m_;


    if (m->filename == ((void*)0)) {
    }


    else {
        return APR_ENOTIMPL;

    }
}
