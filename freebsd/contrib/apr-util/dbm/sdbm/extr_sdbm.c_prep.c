
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_9__ {int flags; int * pagf; int * dirf; int * pool; } ;
typedef TYPE_1__ apr_sdbm_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
typedef int apr_fileperms_t ;


 int APR_FLOCK_EXCLUSIVE ;
 int APR_FLOCK_SHARED ;
 int APR_FOPEN_BINARY ;
 int APR_FOPEN_READ ;
 int APR_FOPEN_SHARELOCK ;
 int APR_FOPEN_WRITE ;
 int APR_SUCCESS ;
 int SDBM_RDONLY ;
 int SDBM_SHARED ;
 int apr_file_close (int *) ;
 int apr_file_open (int **,char const*,int,int ,int *) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 int apr_sdbm_lock (TYPE_1__*,int ) ;
 int apr_sdbm_unlock (TYPE_1__*) ;
 int database_cleanup ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static apr_status_t prep(apr_sdbm_t **pdb, const char *dirname, const char *pagname,
                         apr_int32_t flags, apr_fileperms_t perms, apr_pool_t *p)
{
    apr_sdbm_t *db;
    apr_status_t status;

    *pdb = ((void*)0);

    db = malloc(sizeof(*db));
    memset(db, 0, sizeof(*db));

    db->pool = p;






    if (!(flags & APR_FOPEN_WRITE)) {
        db->flags |= SDBM_RDONLY;
    }







    if (flags & APR_FOPEN_SHARELOCK) {
        db->flags |= SDBM_SHARED;
        flags &= ~APR_FOPEN_SHARELOCK;
    }

    flags |= APR_FOPEN_BINARY | APR_FOPEN_READ;






    if ((status = apr_file_open(&db->dirf, dirname, flags, perms, p))
                != APR_SUCCESS)
        goto error;

    if ((status = apr_file_open(&db->pagf, pagname, flags, perms, p))
                != APR_SUCCESS)
        goto error;

    if ((status = apr_sdbm_lock(db, (db->flags & SDBM_RDONLY)
                                        ? APR_FLOCK_SHARED
                                        : APR_FLOCK_EXCLUSIVE))
                != APR_SUCCESS)
        goto error;
    if (db->flags & SDBM_SHARED)
        if ((status = apr_sdbm_unlock(db)) != APR_SUCCESS)
            goto error;


    apr_pool_cleanup_register(p, db, database_cleanup, apr_pool_cleanup_null);


    *pdb = db;
    return APR_SUCCESS;

error:
    if (db->dirf && db->pagf)
        (void) apr_sdbm_unlock(db);
    if (db->dirf != ((void*)0))
        (void) apr_file_close(db->dirf);
    if (db->pagf != ((void*)0)) {
        (void) apr_file_close(db->pagf);
    }
    free(db);
    return status;
}
