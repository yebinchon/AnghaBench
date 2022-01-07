
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_seqid_counter {int dummy; } ;
struct nfs_seqid {int list; struct nfs_seqid_counter* sequence; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct nfs_seqid* kmalloc (int,int ) ;

struct nfs_seqid *nfs_alloc_seqid(struct nfs_seqid_counter *counter, gfp_t gfp_mask)
{
 struct nfs_seqid *new;

 new = kmalloc(sizeof(*new), gfp_mask);
 if (new != ((void*)0)) {
  new->sequence = counter;
  INIT_LIST_HEAD(&new->list);
 }
 return new;
}
