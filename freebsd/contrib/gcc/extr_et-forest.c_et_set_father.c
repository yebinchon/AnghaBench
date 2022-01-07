
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_occ {scalar_t__ depth; scalar_t__ min; int min_occ; struct et_occ* prev; } ;
struct et_node {struct et_node* son; struct et_node* right; struct et_node* left; struct et_node* father; struct et_occ* parent_occ; struct et_occ* rightmost_occ; } ;


 int et_check_tree_sanity (struct et_occ*) ;
 struct et_occ* et_new_occ (struct et_node*) ;
 int et_recomp_min (struct et_occ*) ;
 int et_splay (struct et_occ*) ;
 int record_path_before (struct et_occ*) ;
 int set_next (struct et_occ*,struct et_occ*) ;
 int set_prev (struct et_occ*,struct et_occ*) ;

void
et_set_father (struct et_node *t, struct et_node *father)
{
  struct et_node *left, *right;
  struct et_occ *rmost, *left_part, *new_f_occ, *p;


  new_f_occ = et_new_occ (father);

  rmost = father->rightmost_occ;
  et_splay (rmost);

  left_part = rmost->prev;

  p = t->rightmost_occ;
  et_splay (p);

  set_prev (new_f_occ, left_part);
  set_next (new_f_occ, p);

  p->depth++;
  p->min++;
  et_recomp_min (new_f_occ);

  set_prev (rmost, new_f_occ);

  if (new_f_occ->min + rmost->depth < rmost->min)
    {
      rmost->min = new_f_occ->min + rmost->depth;
      rmost->min_occ = new_f_occ->min_occ;
    }

  t->parent_occ = new_f_occ;


  t->father = father;
  right = father->son;
  if (right)
    left = right->left;
  else
    left = right = t;

  left->right = t;
  right->left = t;
  t->left = left;
  t->right = right;

  father->son = t;





}
