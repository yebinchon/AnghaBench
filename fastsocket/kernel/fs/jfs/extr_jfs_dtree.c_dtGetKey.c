
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct ldtentry {int next; int namlen; int * name; } ;
struct idtentry {int next; int namlen; int * name; } ;
struct dtslot {int next; int * name; } ;
struct component_name {int namlen; int * name; } ;
typedef int s8 ;
struct TYPE_5__ {int flag; } ;
struct TYPE_6__ {struct dtslot* slot; TYPE_1__ header; } ;
typedef TYPE_2__ dtpage_t ;
typedef int __le16 ;


 int BT_LEAF ;
 int DTIHDRDATALEN ;
 int DTLHDRDATALEN ;
 int DTLHDRDATALEN_LEGACY ;
 int DTSLOTDATALEN ;
 int* DT_GETSTBL (TYPE_2__*) ;
 int JFS_DIR_INDEX ;
 int UniStrncpy_from_le (int *,int *,int) ;
 int min (int,int ) ;

__attribute__((used)) static void dtGetKey(dtpage_t * p, int i,
       struct component_name * key, int flag)
{
 int si;
 s8 *stbl;
 struct ldtentry *lh;
 struct idtentry *ih;
 struct dtslot *t;
 int namlen, len;
 wchar_t *kname;
 __le16 *name;


 stbl = DT_GETSTBL(p);
 si = stbl[i];
 if (p->header.flag & BT_LEAF) {
  lh = (struct ldtentry *) & p->slot[si];
  si = lh->next;
  namlen = lh->namlen;
  name = lh->name;
  if (flag & JFS_DIR_INDEX)
   len = min(namlen, DTLHDRDATALEN);
  else
   len = min(namlen, DTLHDRDATALEN_LEGACY);
 } else {
  ih = (struct idtentry *) & p->slot[si];
  si = ih->next;
  namlen = ih->namlen;
  name = ih->name;
  len = min(namlen, DTIHDRDATALEN);
 }

 key->namlen = namlen;
 kname = key->name;




 UniStrncpy_from_le(kname, name, len);




 while (si >= 0) {

  t = &p->slot[si];
  kname += len;
  namlen -= len;
  len = min(namlen, DTSLOTDATALEN);
  UniStrncpy_from_le(kname, t->name, len);

  si = t->next;
 }
}
