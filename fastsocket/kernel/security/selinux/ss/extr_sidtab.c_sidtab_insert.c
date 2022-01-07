
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sidtab_node {scalar_t__ sid; struct sidtab_node* next; int context; } ;
struct sidtab {scalar_t__ next_sid; int nel; struct sidtab_node** htable; } ;
struct context {int dummy; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int SIDTAB_HASH (scalar_t__) ;
 scalar_t__ context_cpy (int *,struct context*) ;
 int kfree (struct sidtab_node*) ;
 struct sidtab_node* kmalloc (int,int ) ;
 int wmb () ;

int sidtab_insert(struct sidtab *s, u32 sid, struct context *context)
{
 int hvalue, rc = 0;
 struct sidtab_node *prev, *cur, *newnode;

 if (!s) {
  rc = -ENOMEM;
  goto out;
 }

 hvalue = SIDTAB_HASH(sid);
 prev = ((void*)0);
 cur = s->htable[hvalue];
 while (cur && sid > cur->sid) {
  prev = cur;
  cur = cur->next;
 }

 if (cur && sid == cur->sid) {
  rc = -EEXIST;
  goto out;
 }

 newnode = kmalloc(sizeof(*newnode), GFP_ATOMIC);
 if (newnode == ((void*)0)) {
  rc = -ENOMEM;
  goto out;
 }
 newnode->sid = sid;
 if (context_cpy(&newnode->context, context)) {
  kfree(newnode);
  rc = -ENOMEM;
  goto out;
 }

 if (prev) {
  newnode->next = prev->next;
  wmb();
  prev->next = newnode;
 } else {
  newnode->next = s->htable[hvalue];
  wmb();
  s->htable[hvalue] = newnode;
 }

 s->nel++;
 if (sid >= s->next_sid)
  s->next_sid = sid + 1;
out:
 return rc;
}
