
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int jhead_cnt; TYPE_1__* jheads; } ;
struct TYPE_2__ {int wbuf; } ;


 int GCHD ;
 int ubifs_wbuf_sync (int *) ;

__attribute__((used)) static int gc_sync_wbufs(struct ubifs_info *c)
{
 int err, i;

 for (i = 0; i < c->jhead_cnt; i++) {
  if (i == GCHD)
   continue;
  err = ubifs_wbuf_sync(&c->jheads[i].wbuf);
  if (err)
   return err;
 }
 return 0;
}
