
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct policydb_compat_info {int ocon_num; } ;
struct policydb {struct ocontext** ocontexts; } ;
struct TYPE_9__ {int* addr; int* mask; } ;
struct TYPE_7__ {int addr; int mask; } ;
struct TYPE_6__ {void* high_port; void* low_port; void* protocol; } ;
struct TYPE_10__ {int* name; TYPE_4__ node6; TYPE_2__ node; TYPE_1__ port; } ;
struct TYPE_8__ {void* behavior; } ;
struct ocontext {int * context; TYPE_5__ u; TYPE_3__ v; void** sid; struct ocontext* next; } ;
typedef int __le32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;







 void* SECURITY_FS_USE_NONE ;
 int context_read_and_validate (int *,struct policydb*,void*) ;
 void* kmalloc (int ,int ) ;
 struct ocontext* kzalloc (int,int ) ;
 void* le32_to_cpu (int) ;
 int next_entry (int*,void*,int) ;

__attribute__((used)) static int ocontext_read(struct policydb *p, struct policydb_compat_info *info,
    void *fp)
{
 int i, j, rc;
 u32 nel, len;
 __le32 buf[3];
 struct ocontext *l, *c;
 u32 nodebuf[8];

 for (i = 0; i < info->ocon_num; i++) {
  rc = next_entry(buf, fp, sizeof(u32));
  if (rc)
   goto out;
  nel = le32_to_cpu(buf[0]);

  l = ((void*)0);
  for (j = 0; j < nel; j++) {
   rc = -ENOMEM;
   c = kzalloc(sizeof(*c), GFP_KERNEL);
   if (!c)
    goto out;
   if (l)
    l->next = c;
   else
    p->ocontexts[i] = c;
   l = c;

   switch (i) {
   case 132:
    rc = next_entry(buf, fp, sizeof(u32));
    if (rc)
     goto out;

    c->sid[0] = le32_to_cpu(buf[0]);
    rc = context_read_and_validate(&c->context[0], p, fp);
    if (rc)
     goto out;
    break;
   case 134:
   case 131:
    rc = next_entry(buf, fp, sizeof(u32));
    if (rc)
     goto out;
    len = le32_to_cpu(buf[0]);

    rc = -ENOMEM;
    c->u.name = kmalloc(len + 1, GFP_KERNEL);
    if (!c->u.name)
     goto out;

    rc = next_entry(c->u.name, fp, len);
    if (rc)
     goto out;

    c->u.name[len] = 0;
    rc = context_read_and_validate(&c->context[0], p, fp);
    if (rc)
     goto out;
    rc = context_read_and_validate(&c->context[1], p, fp);
    if (rc)
     goto out;
    break;
   case 128:
    rc = next_entry(buf, fp, sizeof(u32)*3);
    if (rc)
     goto out;
    c->u.port.protocol = le32_to_cpu(buf[0]);
    c->u.port.low_port = le32_to_cpu(buf[1]);
    c->u.port.high_port = le32_to_cpu(buf[2]);
    rc = context_read_and_validate(&c->context[0], p, fp);
    if (rc)
     goto out;
    break;
   case 130:
    rc = next_entry(nodebuf, fp, sizeof(u32) * 2);
    if (rc)
     goto out;
    c->u.node.addr = nodebuf[0];
    c->u.node.mask = nodebuf[1];
    rc = context_read_and_validate(&c->context[0], p, fp);
    if (rc)
     goto out;
    break;
   case 133:
    rc = next_entry(buf, fp, sizeof(u32)*2);
    if (rc)
     goto out;

    rc = -EINVAL;
    c->v.behavior = le32_to_cpu(buf[0]);
    if (c->v.behavior > SECURITY_FS_USE_NONE)
     goto out;

    rc = -ENOMEM;
    len = le32_to_cpu(buf[1]);
    c->u.name = kmalloc(len + 1, GFP_KERNEL);
    if (!c->u.name)
     goto out;

    rc = next_entry(c->u.name, fp, len);
    if (rc)
     goto out;
    c->u.name[len] = 0;
    rc = context_read_and_validate(&c->context[0], p, fp);
    if (rc)
     goto out;
    break;
   case 129: {
    int k;

    rc = next_entry(nodebuf, fp, sizeof(u32) * 8);
    if (rc)
     goto out;
    for (k = 0; k < 4; k++)
     c->u.node6.addr[k] = nodebuf[k];
    for (k = 0; k < 4; k++)
     c->u.node6.mask[k] = nodebuf[k+4];
    rc = context_read_and_validate(&c->context[0], p, fp);
    if (rc)
     goto out;
    break;
   }
   }
  }
 }
 rc = 0;
out:
 return rc;
}
