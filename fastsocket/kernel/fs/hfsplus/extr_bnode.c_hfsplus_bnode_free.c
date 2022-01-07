
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfs_bnode {int dummy; } ;


 int kfree (struct hfs_bnode*) ;

void hfs_bnode_free(struct hfs_bnode *node)
{





 kfree(node);
}
