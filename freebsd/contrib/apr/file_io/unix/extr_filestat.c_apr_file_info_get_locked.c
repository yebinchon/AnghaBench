
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int struct_stat ;
typedef scalar_t__ apr_status_t ;
typedef int apr_int32_t ;
struct TYPE_7__ {int valid; int fname; int pool; } ;
typedef TYPE_1__ apr_finfo_t ;
struct TYPE_8__ {int fname; int pool; int filedes; scalar_t__ buffered; } ;
typedef TYPE_2__ apr_file_t ;


 scalar_t__ APR_INCOMPLETE ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_file_flush_locked (TYPE_2__*) ;
 scalar_t__ errno ;
 int fill_out_finfo (TYPE_1__*,int *,int) ;
 scalar_t__ fstat (int ,int *) ;

apr_status_t apr_file_info_get_locked(apr_finfo_t *finfo, apr_int32_t wanted,
                                      apr_file_t *thefile)
{
    struct_stat info;

    if (thefile->buffered) {
        apr_status_t rv = apr_file_flush_locked(thefile);
        if (rv != APR_SUCCESS)
            return rv;
    }

    if (fstat(thefile->filedes, &info) == 0) {
        finfo->pool = thefile->pool;
        finfo->fname = thefile->fname;
        fill_out_finfo(finfo, &info, wanted);
        return (wanted & ~finfo->valid) ? APR_INCOMPLETE : APR_SUCCESS;
    }
    else {
        return errno;
    }
}
