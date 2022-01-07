
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resize_node_skipped; } ;
struct trie {TYPE_1__ stats; } ;
struct tnode {int empty_children; scalar_t__ full_children; int bits; struct node** child; } ;
struct node {int dummy; } ;


 scalar_t__ IS_ERR (struct tnode*) ;
 int MAX_WORK ;
 int check_tnode (struct tnode*) ;
 struct tnode* halve (struct trie*,struct tnode*) ;
 int halve_threshold ;
 int halve_threshold_root ;
 struct tnode* inflate (struct trie*,struct tnode*) ;
 int inflate_threshold ;
 int inflate_threshold_root ;
 int node_parent (struct node*) ;
 int node_set_parent (struct node*,int *) ;
 int pr_debug (char*,struct tnode*,int,int) ;
 int tnode_child_length (struct tnode*) ;
 int tnode_free_safe (struct tnode*) ;

__attribute__((used)) static struct node *resize(struct trie *t, struct tnode *tn)
{
 int i;
 struct tnode *old_tn;
 int inflate_threshold_use;
 int halve_threshold_use;
 int max_work;

 if (!tn)
  return ((void*)0);

 pr_debug("In tnode_resize %p inflate_threshold=%d threshold=%d\n",
   tn, inflate_threshold, halve_threshold);


 if (tn->empty_children == tnode_child_length(tn)) {
  tnode_free_safe(tn);
  return ((void*)0);
 }

 if (tn->empty_children == tnode_child_length(tn) - 1)
  goto one_child;
 check_tnode(tn);



 if (!node_parent((struct node*) tn)) {
  inflate_threshold_use = inflate_threshold_root;
  halve_threshold_use = halve_threshold_root;
 }
 else {
  inflate_threshold_use = inflate_threshold;
  halve_threshold_use = halve_threshold;
 }

 max_work = MAX_WORK;
 while ((tn->full_children > 0 && max_work-- &&
  50 * (tn->full_children + tnode_child_length(tn)
        - tn->empty_children)
  >= inflate_threshold_use * tnode_child_length(tn))) {

  old_tn = tn;
  tn = inflate(t, tn);

  if (IS_ERR(tn)) {
   tn = old_tn;



   break;
  }
 }

 check_tnode(tn);


 if( max_work != MAX_WORK)
  return (struct node *) tn;






 max_work = MAX_WORK;
 while (tn->bits > 1 && max_work-- &&
        100 * (tnode_child_length(tn) - tn->empty_children) <
        halve_threshold_use * tnode_child_length(tn)) {

  old_tn = tn;
  tn = halve(t, tn);
  if (IS_ERR(tn)) {
   tn = old_tn;



   break;
  }
 }



 if (tn->empty_children == tnode_child_length(tn) - 1) {
one_child:
  for (i = 0; i < tnode_child_length(tn); i++) {
   struct node *n;

   n = tn->child[i];
   if (!n)
    continue;



   node_set_parent(n, ((void*)0));
   tnode_free_safe(tn);
   return n;
  }
 }
 return (struct node *) tn;
}
