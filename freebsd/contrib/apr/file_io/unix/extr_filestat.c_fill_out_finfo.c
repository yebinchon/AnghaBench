
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int tv_nsec; } ;
struct TYPE_9__ {int tv_nsec; } ;
struct TYPE_8__ {int tv_nsec; } ;
struct TYPE_11__ {scalar_t__ st_ino; int st_atimensec; int st_atime_n; int st_mtimensec; int st_mtime_n; int st_ctimensec; int st_ctime_n; scalar_t__ st_blocks; TYPE_3__ st_ctim; int st_ctime; TYPE_2__ st_mtim; int st_mtime; TYPE_1__ st_atim; int st_atime; int st_nlink; int st_dev; int st_size; int st_gid; int st_uid; int st_mode; } ;
typedef TYPE_4__ struct_stat ;
typedef void* apr_off_t ;
typedef int apr_int32_t ;
typedef scalar_t__ apr_ino_t ;
struct TYPE_12__ {int valid; scalar_t__ inode; int atime; int mtime; int ctime; void* csize; int nlink; int device; int size; int group; int user; int filetype; int protection; } ;
typedef TYPE_5__ apr_finfo_t ;


 int APR_FINFO_CSIZE ;
 int APR_FINFO_IDENT ;
 int APR_FINFO_INODE ;
 int APR_FINFO_MIN ;
 int APR_FINFO_NLINK ;
 int APR_FINFO_OWNER ;
 int APR_FINFO_PROT ;
 int APR_TIME_C (int) ;
 scalar_t__ DEV_BSIZE ;
 int apr_time_ansi_put (int*,int ) ;
 int apr_unix_mode2perms (int ) ;
 int filetype_from_mode (int ) ;

__attribute__((used)) static void fill_out_finfo(apr_finfo_t *finfo, struct_stat *info,
                           apr_int32_t wanted)
{
    finfo->valid = APR_FINFO_MIN | APR_FINFO_IDENT | APR_FINFO_NLINK
                 | APR_FINFO_OWNER | APR_FINFO_PROT;
    finfo->protection = apr_unix_mode2perms(info->st_mode);
    finfo->filetype = filetype_from_mode(info->st_mode);
    finfo->user = info->st_uid;
    finfo->group = info->st_gid;
    finfo->size = info->st_size;
    finfo->device = info->st_dev;
    finfo->nlink = info->st_nlink;



    if (sizeof(apr_ino_t) >= sizeof(info->st_ino)
        || (apr_ino_t)info->st_ino == info->st_ino) {
        finfo->inode = info->st_ino;
    } else {
        finfo->valid &= ~APR_FINFO_INODE;
    }

    apr_time_ansi_put(&finfo->atime, info->st_atime);
    apr_time_ansi_put(&finfo->mtime, info->st_mtime);
    apr_time_ansi_put(&finfo->ctime, info->st_ctime);
}
