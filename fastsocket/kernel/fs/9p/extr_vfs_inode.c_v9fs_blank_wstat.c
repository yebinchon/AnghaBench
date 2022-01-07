
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; int version; int type; } ;
struct p9_wstat {int * extension; int n_muid; int n_gid; int n_uid; int * muid; int * gid; int * uid; int * name; int length; int mtime; int atime; int mode; TYPE_1__ qid; int dev; int type; } ;



__attribute__((used)) static void
v9fs_blank_wstat(struct p9_wstat *wstat)
{
 wstat->type = ~0;
 wstat->dev = ~0;
 wstat->qid.type = ~0;
 wstat->qid.version = ~0;
 *((long long *)&wstat->qid.path) = ~0;
 wstat->mode = ~0;
 wstat->atime = ~0;
 wstat->mtime = ~0;
 wstat->length = ~0;
 wstat->name = ((void*)0);
 wstat->uid = ((void*)0);
 wstat->gid = ((void*)0);
 wstat->muid = ((void*)0);
 wstat->n_uid = ~0;
 wstat->n_gid = ~0;
 wstat->n_muid = ~0;
 wstat->extension = ((void*)0);
}
