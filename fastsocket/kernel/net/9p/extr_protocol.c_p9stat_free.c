
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_wstat {int extension; int muid; int gid; int uid; int name; } ;


 int kfree (int ) ;

void p9stat_free(struct p9_wstat *stbuf)
{
 kfree(stbuf->name);
 kfree(stbuf->uid);
 kfree(stbuf->gid);
 kfree(stbuf->muid);
 kfree(stbuf->extension);
}
