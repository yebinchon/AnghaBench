
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jffs2_xattr_ref {int xseqno; int xid; int ino; struct jffs2_xattr_ref* next; struct jffs2_xattr_datum* xd; TYPE_1__* ic; } ;
struct jffs2_xattr_datum {int xid; } ;
struct jffs2_sb_info {int erase_completion_lock; struct jffs2_xattr_ref* xref_dead_list; } ;
struct TYPE_2__ {int ino; } ;


 int XREF_DELETE_MARKER ;
 int dbg_xattr (char*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unrefer_xattr_datum (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ;

__attribute__((used)) static void delete_xattr_ref(struct jffs2_sb_info *c, struct jffs2_xattr_ref *ref)
{

 struct jffs2_xattr_datum *xd;

 xd = ref->xd;
 ref->xseqno |= XREF_DELETE_MARKER;
 ref->ino = ref->ic->ino;
 ref->xid = ref->xd->xid;
 spin_lock(&c->erase_completion_lock);
 ref->next = c->xref_dead_list;
 c->xref_dead_list = ref;
 spin_unlock(&c->erase_completion_lock);

 dbg_xattr("xref(ino=%u, xid=%u, xseqno=%u) was removed.\n",
    ref->ino, ref->xid, ref->xseqno);

 unrefer_xattr_datum(c, xd);
}
