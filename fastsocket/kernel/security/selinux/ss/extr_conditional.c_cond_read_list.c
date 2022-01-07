
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int nel; } ;
struct policydb {struct cond_node* cond_list; TYPE_1__ te_avtab; int te_cond_avtab; } ;
struct cond_node {struct cond_node* next; } ;
typedef int __le32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int avtab_alloc (int *,int ) ;
 int cond_list_destroy (struct cond_node*) ;
 int cond_read_node (struct policydb*,struct cond_node*,void*) ;
 struct cond_node* kzalloc (int,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;

int cond_read_list(struct policydb *p, void *fp)
{
 struct cond_node *node, *last = ((void*)0);
 __le32 buf[1];
 u32 i, len;
 int rc;

 rc = next_entry(buf, fp, sizeof buf);
 if (rc)
  return rc;

 len = le32_to_cpu(buf[0]);

 rc = avtab_alloc(&(p->te_cond_avtab), p->te_avtab.nel);
 if (rc)
  goto err;

 for (i = 0; i < len; i++) {
  rc = -ENOMEM;
  node = kzalloc(sizeof(struct cond_node), GFP_KERNEL);
  if (!node)
   goto err;

  rc = cond_read_node(p, node, fp);
  if (rc)
   goto err;

  if (i == 0)
   p->cond_list = node;
  else
   last->next = node;
  last = node;
 }
 return 0;
err:
 cond_list_destroy(p->cond_list);
 p->cond_list = ((void*)0);
 return rc;
}
