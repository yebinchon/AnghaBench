
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* case_node_ptr ;
struct TYPE_4__ {struct TYPE_4__* parent; struct TYPE_4__* right; struct TYPE_4__* left; int high; int low; } ;


 scalar_t__ COST_TABLE (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int tree_int_cst_equal (int ,int ) ;
 scalar_t__ use_cost_table ;

__attribute__((used)) static void
balance_case_nodes (case_node_ptr *head, case_node_ptr parent)
{
  case_node_ptr np;

  np = *head;
  if (np)
    {
      int cost = 0;
      int i = 0;
      int ranges = 0;
      case_node_ptr *npp;
      case_node_ptr left;



      while (np)
 {
   if (!tree_int_cst_equal (np->low, np->high))
     {
       ranges++;
       if (use_cost_table)
  cost += COST_TABLE (TREE_INT_CST_LOW (np->high));
     }

   if (use_cost_table)
     cost += COST_TABLE (TREE_INT_CST_LOW (np->low));

   i++;
   np = np->right;
 }

      if (i > 2)
 {

   npp = head;
   left = *npp;
   if (use_cost_table)
     {


       int n_moved = 0;
       i = (cost + 1) / 2;
       while (1)
  {

    if (!tree_int_cst_equal ((*npp)->low, (*npp)->high))
      i -= COST_TABLE (TREE_INT_CST_LOW ((*npp)->high));
    i -= COST_TABLE (TREE_INT_CST_LOW ((*npp)->low));
    if (i <= 0)
      break;
    npp = &(*npp)->right;
    n_moved += 1;
  }
       if (n_moved == 0)
  {


    np = *head;
    np->parent = parent;
    balance_case_nodes (&np->left, np);
    for (; np->right; np = np->right)
      np->right->parent = np;
    return;
  }
     }

   else if (i == 3)
     npp = &(*npp)->right;
   else
     {



       i = (i + ranges + 1) / 2;
       while (1)
  {

    if (!tree_int_cst_equal ((*npp)->low, (*npp)->high))
      i--;
    i--;
    if (i <= 0)
      break;
    npp = &(*npp)->right;
  }
     }
   *head = np = *npp;
   *npp = 0;
   np->parent = parent;
   np->left = left;


   balance_case_nodes (&np->left, np);
   balance_case_nodes (&np->right, np);
 }
      else
 {


   np = *head;
   np->parent = parent;
   for (; np->right; np = np->right)
     np->right->parent = np;
 }
    }
}
