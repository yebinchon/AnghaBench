
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct ldtentry {int next; int namlen; int * name; } ;
struct idtentry {int next; int namlen; int * name; } ;
struct dtslot {int next; int * name; } ;
struct component_name {int* name; int namlen; } ;
struct TYPE_4__ {int flag; } ;
struct TYPE_5__ {int * slot; TYPE_1__ header; } ;
typedef TYPE_2__ dtpage_t ;
typedef int __le16 ;


 int BT_LEAF ;
 int DTIHDRDATALEN ;
 int DTLHDRDATALEN ;
 int DTLHDRDATALEN_LEGACY ;
 int DTSLOTDATALEN ;
 int JFS_DIR_INDEX ;
 int JFS_OS2 ;
 int UniToupper (int) ;
 int le16_to_cpu (int ) ;
 int min (int,int) ;

__attribute__((used)) static int ciCompare(struct component_name * key,
       dtpage_t * p,
       int si,
       int flag)
{
 wchar_t *kname, x;
 __le16 *name;
 int klen, namlen, len, rc;
 struct ldtentry *lh;
 struct idtentry *ih;
 struct dtslot *t;
 int i;
 kname = key->name;
 klen = key->namlen;




 if (p->header.flag & BT_LEAF) {
  lh = (struct ldtentry *) & p->slot[si];
  si = lh->next;
  name = lh->name;
  namlen = lh->namlen;
  if (flag & JFS_DIR_INDEX)
   len = min(namlen, DTLHDRDATALEN);
  else
   len = min(namlen, DTLHDRDATALEN_LEGACY);
 }



 else {
  ih = (struct idtentry *) & p->slot[si];
  si = ih->next;
  name = ih->name;
  namlen = ih->namlen;
  len = min(namlen, DTIHDRDATALEN);
 }


 len = min(klen, len);
 for (i = 0; i < len; i++, kname++, name++) {

  if ((flag & JFS_OS2) == JFS_OS2)
   x = UniToupper(le16_to_cpu(*name));
  else
   x = le16_to_cpu(*name);
  if ((rc = *kname - x))
   return rc;
 }

 klen -= len;
 namlen -= len;


 while (klen > 0 && namlen > 0) {

  t = (struct dtslot *) & p->slot[si];
  len = min(namlen, DTSLOTDATALEN);
  len = min(klen, len);
  name = t->name;
  for (i = 0; i < len; i++, kname++, name++) {

   if ((flag & JFS_OS2) == JFS_OS2)
    x = UniToupper(le16_to_cpu(*name));
   else
    x = le16_to_cpu(*name);

   if ((rc = *kname - x))
    return rc;
  }

  klen -= len;
  namlen -= len;
  si = t->next;
 }

 return (klen - namlen);
}
