
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
struct policydb_compat_info {unsigned int ocon_num; } ;
struct policydb {struct ocontext** ocontexts; } ;
struct TYPE_9__ {int * mask; int * addr; } ;
struct TYPE_7__ {int mask; int addr; } ;
struct TYPE_6__ {size_t protocol; size_t low_port; size_t high_port; } ;
struct TYPE_10__ {TYPE_4__ node6; int * name; TYPE_2__ node; TYPE_1__ port; } ;
struct TYPE_8__ {size_t behavior; } ;
struct ocontext {size_t* sid; int * context; TYPE_5__ u; TYPE_3__ v; struct ocontext* next; } ;
typedef int __le32 ;
 unsigned int context_write (struct policydb*,int *,void*) ;
 int cpu_to_le32 (size_t) ;
 unsigned int put_entry (int *,int,int,void*) ;
 size_t strlen (int *) ;

__attribute__((used)) static int ocontext_write(struct policydb *p, struct policydb_compat_info *info,
     void *fp)
{
 unsigned int i, j, rc;
 size_t nel, len;
 __le32 buf[3];
 u32 nodebuf[8];
 struct ocontext *c;
 for (i = 0; i < info->ocon_num; i++) {
  nel = 0;
  for (c = p->ocontexts[i]; c; c = c->next)
   nel++;
  buf[0] = cpu_to_le32(nel);
  rc = put_entry(buf, sizeof(u32), 1, fp);
  if (rc)
   return rc;
  for (c = p->ocontexts[i]; c; c = c->next) {
   switch (i) {
   case 132:
    buf[0] = cpu_to_le32(c->sid[0]);
    rc = put_entry(buf, sizeof(u32), 1, fp);
    if (rc)
     return rc;
    rc = context_write(p, &c->context[0], fp);
    if (rc)
     return rc;
    break;
   case 134:
   case 131:
    len = strlen(c->u.name);
    buf[0] = cpu_to_le32(len);
    rc = put_entry(buf, sizeof(u32), 1, fp);
    if (rc)
     return rc;
    rc = put_entry(c->u.name, 1, len, fp);
    if (rc)
     return rc;
    rc = context_write(p, &c->context[0], fp);
    if (rc)
     return rc;
    rc = context_write(p, &c->context[1], fp);
    if (rc)
     return rc;
    break;
   case 128:
    buf[0] = cpu_to_le32(c->u.port.protocol);
    buf[1] = cpu_to_le32(c->u.port.low_port);
    buf[2] = cpu_to_le32(c->u.port.high_port);
    rc = put_entry(buf, sizeof(u32), 3, fp);
    if (rc)
     return rc;
    rc = context_write(p, &c->context[0], fp);
    if (rc)
     return rc;
    break;
   case 130:
    nodebuf[0] = c->u.node.addr;
    nodebuf[1] = c->u.node.mask;
    rc = put_entry(nodebuf, sizeof(u32), 2, fp);
    if (rc)
     return rc;
    rc = context_write(p, &c->context[0], fp);
    if (rc)
     return rc;
    break;
   case 133:
    buf[0] = cpu_to_le32(c->v.behavior);
    len = strlen(c->u.name);
    buf[1] = cpu_to_le32(len);
    rc = put_entry(buf, sizeof(u32), 2, fp);
    if (rc)
     return rc;
    rc = put_entry(c->u.name, 1, len, fp);
    if (rc)
     return rc;
    rc = context_write(p, &c->context[0], fp);
    if (rc)
     return rc;
    break;
   case 129:
    for (j = 0; j < 4; j++)
     nodebuf[j] = c->u.node6.addr[j];
    for (j = 0; j < 4; j++)
     nodebuf[j + 4] = c->u.node6.mask[j];
    rc = put_entry(nodebuf, sizeof(u32), 8, fp);
    if (rc)
     return rc;
    rc = context_write(p, &c->context[0], fp);
    if (rc)
     return rc;
    break;
   }
  }
 }
 return 0;
}
