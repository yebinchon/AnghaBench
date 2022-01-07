
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct dirent64 {int dummy; } ;
struct dirent {scalar_t__ DIRENT_INODE; } ;
typedef scalar_t__ apr_status_t ;
typedef int apr_int32_t ;
typedef scalar_t__ apr_ino_t ;
struct TYPE_9__ {int valid; int inode; int name; scalar_t__ filetype; int pool; int * fname; } ;
typedef TYPE_1__ apr_finfo_t ;
typedef scalar_t__ apr_filetype_e ;
struct TYPE_10__ {TYPE_3__* entry; int pool; int dirname; int dirstruct; } ;
typedef TYPE_2__ apr_dir_t ;
struct TYPE_11__ {int DIRENT_INODE; int d_name; int DIRENT_TYPE; } ;


 scalar_t__ APR_ENOENT ;
 int APR_FINFO_INODE ;
 int APR_FINFO_LINK ;
 int APR_FINFO_NAME ;
 int APR_FINFO_TYPE ;
 scalar_t__ APR_INCOMPLETE ;
 int APR_PATH_MAX ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ APR_UNKFILE ;
 scalar_t__ EINVAL ;
 char* apr_cpystrn (char*,int ,int) ;
 int apr_pstrdup (int ,int ) ;
 scalar_t__ apr_stat (TYPE_1__*,char*,int,int ) ;
 scalar_t__ errno ;
 scalar_t__ filetype_from_dirent_type (int ) ;
 TYPE_3__* readdir (int ) ;
 scalar_t__ readdir64_r (int ,TYPE_3__*,struct dirent64**) ;
 scalar_t__ readdir_r (int ,TYPE_3__*,struct dirent**) ;

apr_status_t apr_dir_read(apr_finfo_t *finfo, apr_int32_t wanted,
                          apr_dir_t *thedir)
{
    apr_status_t ret = 0;
    errno = 0;
    thedir->entry = readdir(thedir->dirstruct);
    if (thedir->entry == ((void*)0)) {

        if (errno == APR_SUCCESS) {
            ret = APR_ENOENT;
        }
        else
            ret = errno;
    }



    finfo->fname = ((void*)0);

    if (ret) {
        finfo->valid = 0;
        return ret;
    }
    wanted &= ~APR_FINFO_NAME;

    if (wanted)
    {
        char fspec[APR_PATH_MAX];
        char *end;

        end = apr_cpystrn(fspec, thedir->dirname, sizeof fspec);

        if (end > fspec && end[-1] != '/' && (end < fspec + APR_PATH_MAX))
            *end++ = '/';

        apr_cpystrn(end, thedir->entry->d_name,
                    sizeof fspec - (end - fspec));

        ret = apr_stat(finfo, fspec, APR_FINFO_LINK | wanted, thedir->pool);

        finfo->fname = ((void*)0);
    }

    if (wanted && (ret == APR_SUCCESS || ret == APR_INCOMPLETE)) {
        wanted &= ~finfo->valid;
    }
    else {



        finfo->pool = thedir->pool;
        finfo->valid = 0;
    }

    finfo->name = apr_pstrdup(thedir->pool, thedir->entry->d_name);
    finfo->valid |= APR_FINFO_NAME;

    if (wanted)
        return APR_INCOMPLETE;

    return APR_SUCCESS;
}
