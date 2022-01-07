
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_slot {int dummy; } ;
struct nfsd4_session {struct nfsd4_session** se_slots; } ;


 int BUILD_BUG_ON (int) ;
 int GFP_KERNEL ;
 int NFSD_MAX_SLOTS_PER_SESSION ;
 int PAGE_SIZE ;
 int kfree (struct nfsd4_session*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static struct nfsd4_session *alloc_session(int slotsize, int numslots)
{
 struct nfsd4_session *new;
 int mem, i;

 BUILD_BUG_ON(NFSD_MAX_SLOTS_PER_SESSION * sizeof(struct nfsd4_slot *)
   + sizeof(struct nfsd4_session) > PAGE_SIZE);
 mem = numslots * sizeof(struct nfsd4_slot *);

 new = kzalloc(sizeof(*new) + mem, GFP_KERNEL);
 if (!new)
  return ((void*)0);

 for (i = 0; i < numslots; i++) {
  mem = sizeof(struct nfsd4_slot) + slotsize;
  new->se_slots[i] = kzalloc(mem, GFP_KERNEL);
  if (!new->se_slots[i])
   goto out_free;
 }
 return new;
out_free:
 while (i--)
  kfree(new->se_slots[i]);
 kfree(new);
 return ((void*)0);
}
