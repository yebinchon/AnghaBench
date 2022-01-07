
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_member {int nodeid; int weight; } ;
struct dlm_ls {int ls_num_nodes; int ls_name; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int add_ordered_member (struct dlm_ls*,struct dlm_member*) ;
 int dlm_lowcomms_connect_node (int) ;
 int dlm_node_weight (int ,int) ;
 int kfree (struct dlm_member*) ;
 struct dlm_member* kzalloc (int,int ) ;

__attribute__((used)) static int dlm_add_member(struct dlm_ls *ls, int nodeid)
{
 struct dlm_member *memb;
 int w, error;

 memb = kzalloc(sizeof(struct dlm_member), GFP_NOFS);
 if (!memb)
  return -ENOMEM;

 w = dlm_node_weight(ls->ls_name, nodeid);
 if (w < 0) {
  kfree(memb);
  return w;
 }

 error = dlm_lowcomms_connect_node(nodeid);
 if (error < 0) {
  kfree(memb);
  return error;
 }

 memb->nodeid = nodeid;
 memb->weight = w;
 add_ordered_member(ls, memb);
 ls->ls_num_nodes++;
 return 0;
}
