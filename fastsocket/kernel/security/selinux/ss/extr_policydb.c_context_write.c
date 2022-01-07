
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct policydb {int dummy; } ;
struct context {int range; int type; int role; int user; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;
 int mls_write_range_helper (int *,void*) ;
 int put_entry (int *,int,int,void*) ;

__attribute__((used)) static int context_write(struct policydb *p, struct context *c,
    void *fp)
{
 int rc;
 __le32 buf[3];

 buf[0] = cpu_to_le32(c->user);
 buf[1] = cpu_to_le32(c->role);
 buf[2] = cpu_to_le32(c->type);

 rc = put_entry(buf, sizeof(u32), 3, fp);
 if (rc)
  return rc;

 rc = mls_write_range_helper(&c->range, fp);
 if (rc)
  return rc;

 return 0;
}
