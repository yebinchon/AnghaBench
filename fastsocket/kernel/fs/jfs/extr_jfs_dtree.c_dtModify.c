
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tid_t ;
struct tlock {int lock; } ;
struct metapage {int dummy; } ;
struct lv {int offset; int length; } ;
struct ldtentry {int inumber; } ;
struct inode {int dummy; } ;
struct dt_lock {int index; struct lv* lv; } ;
struct component_name {int dummy; } ;
struct btstack {int top; } ;
typedef int s8 ;
typedef int s64 ;
typedef int ino_t ;
struct TYPE_4__ {int * slot; } ;
typedef TYPE_1__ dtpage_t ;


 int ASSERT (int) ;
 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 int DT_GETSEARCH (struct inode*,int ,int ,struct metapage*,TYPE_1__*,int) ;
 int* DT_GETSTBL (TYPE_1__*) ;
 int DT_PUTPAGE (struct metapage*) ;
 int cpu_to_le32 (int ) ;
 int dtSearch (struct inode*,struct component_name*,int *,struct btstack*,int) ;
 int tlckDTREE ;
 int tlckENTRY ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;

int dtModify(tid_t tid, struct inode *ip,
  struct component_name * key, ino_t * orig_ino, ino_t new_ino, int flag)
{
 int rc;
 s64 bn;
 struct metapage *mp;
 dtpage_t *p;
 int index;
 struct btstack btstack;
 struct tlock *tlck;
 struct dt_lock *dtlck;
 struct lv *lv;
 s8 *stbl;
 int entry_si;
 struct ldtentry *entry;






 if ((rc = dtSearch(ip, key, orig_ino, &btstack, flag)))
  return rc;


 DT_GETSEARCH(ip, btstack.top, bn, mp, p, index);

 BT_MARK_DIRTY(mp, ip);



 tlck = txLock(tid, ip, mp, tlckDTREE | tlckENTRY);
 dtlck = (struct dt_lock *) & tlck->lock;


 stbl = DT_GETSTBL(p);
 entry_si = stbl[index];


 ASSERT(dtlck->index == 0);
 lv = & dtlck->lv[0];
 lv->offset = entry_si;
 lv->length = 1;
 dtlck->index++;


 entry = (struct ldtentry *) & p->slot[entry_si];


 entry->inumber = cpu_to_le32(new_ino);


 DT_PUTPAGE(mp);

 return 0;
}
