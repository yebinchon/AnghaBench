
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct policydb {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int specified; int target_class; int target_type; int source_type; } ;
struct avtab_node {TYPE_2__ datum; TYPE_1__ key; } ;
typedef int __le32 ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int put_entry (int *,int,int,void*) ;

int avtab_write_item(struct policydb *p, struct avtab_node *cur, void *fp)
{
 __le16 buf16[4];
 __le32 buf32[1];
 int rc;

 buf16[0] = cpu_to_le16(cur->key.source_type);
 buf16[1] = cpu_to_le16(cur->key.target_type);
 buf16[2] = cpu_to_le16(cur->key.target_class);
 buf16[3] = cpu_to_le16(cur->key.specified);
 rc = put_entry(buf16, sizeof(u16), 4, fp);
 if (rc)
  return rc;
 buf32[0] = cpu_to_le32(cur->datum.data);
 rc = put_entry(buf32, sizeof(u32), 1, fp);
 if (rc)
  return rc;
 return 0;
}
