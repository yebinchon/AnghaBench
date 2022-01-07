
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ apr_status_t ;
struct TYPE_4__ {scalar_t__ buffered; } ;
typedef TYPE_1__ apr_file_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_file_flush (TYPE_1__*) ;
 scalar_t__ file_cleanup (TYPE_1__*,int ) ;

apr_status_t apr_unix_file_cleanup(void *thefile)
{
    apr_file_t *file = thefile;
    apr_status_t flush_rv = APR_SUCCESS, rv = APR_SUCCESS;

    if (file->buffered) {
        flush_rv = apr_file_flush(file);
    }

    rv = file_cleanup(file, 0);

    return rv != APR_SUCCESS ? rv : flush_rv;
}
