
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_3__ {int flags; int pagf; int dirf; } ;
typedef TYPE_1__ apr_sdbm_t ;


 int APR_SUCCESS ;
 int SDBM_EXCLUSIVE_LOCK ;
 int SDBM_SHARED_LOCK ;
 int apr_file_close (int ) ;
 int apr_file_unlock (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static apr_status_t database_cleanup(void *data)
{
    apr_sdbm_t *db = data;





    if (db->flags & (SDBM_SHARED_LOCK | SDBM_EXCLUSIVE_LOCK))
        (void) apr_file_unlock(db->dirf);
    (void) apr_file_close(db->dirf);
    (void) apr_file_close(db->pagf);
    free(db);

    return APR_SUCCESS;
}
