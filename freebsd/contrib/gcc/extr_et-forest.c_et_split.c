
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct et_occ {scalar_t__ min; scalar_t__ depth; int * parent; struct et_occ* next; struct et_occ* prev; } ;
struct et_node {struct et_node* father; struct et_node* right; TYPE_1__* left; struct et_node* son; struct et_occ* parent_occ; struct et_occ* rightmost_occ; } ;
struct TYPE_2__ {struct et_node* right; } ;


 int et_check_tree_sanity (struct et_occ*) ;
 int et_occurrences ;
 int et_recomp_min (struct et_occ*) ;
 int et_splay (struct et_occ*) ;
 int pool_free (int ,struct et_occ*) ;
 int record_path_before (struct et_occ*) ;
 int set_prev (struct et_occ*,struct et_occ*) ;

void
et_split (struct et_node *t)
{
  struct et_node *father = t->father;
  struct et_occ *r, *l, *rmost, *p_occ;


  rmost = t->rightmost_occ;
  et_splay (rmost);

  for (r = rmost->next; r->prev; r = r->prev)
    continue;
  et_splay (r);

  r->prev->parent = ((void*)0);
  p_occ = t->parent_occ;
  et_splay (p_occ);
  t->parent_occ = ((void*)0);

  l = p_occ->prev;
  p_occ->next->parent = ((void*)0);

  set_prev (r, l);

  et_recomp_min (r);

  et_splay (rmost);
  rmost->depth = 0;
  rmost->min = 0;

  pool_free (et_occurrences, p_occ);


  if (father->son == t)
    father->son = t->right;
  if (father->son == t)
    father->son = ((void*)0);
  else
    {
      t->left->right = t->right;
      t->right->left = t->left;
    }
  t->left = t->right = ((void*)0);
  t->father = ((void*)0);
}
