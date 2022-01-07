
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct role_datum {size_t value; size_t bounds; int types; int dominates; } ;
struct policydb {scalar_t__ policyvers; } ;
struct policy_data {struct policydb* p; void* fp; } ;
typedef int buf ;
typedef char __le32 ;


 int BUG_ON (int) ;
 scalar_t__ POLICYDB_VERSION_BOUNDARY ;
 char cpu_to_le32 (size_t) ;
 int ebitmap_write (int *,void*) ;
 int put_entry (char*,int,size_t,void*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int role_write(void *vkey, void *datum, void *ptr)
{
 char *key = vkey;
 struct role_datum *role = datum;
 struct policy_data *pd = ptr;
 void *fp = pd->fp;
 struct policydb *p = pd->p;
 __le32 buf[3];
 size_t items, len;
 int rc;

 len = strlen(key);
 items = 0;
 buf[items++] = cpu_to_le32(len);
 buf[items++] = cpu_to_le32(role->value);
 if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
  buf[items++] = cpu_to_le32(role->bounds);

 BUG_ON(items > (sizeof(buf)/sizeof(buf[0])));

 rc = put_entry(buf, sizeof(u32), items, fp);
 if (rc)
  return rc;

 rc = put_entry(key, 1, len, fp);
 if (rc)
  return rc;

 rc = ebitmap_write(&role->dominates, fp);
 if (rc)
  return rc;

 rc = ebitmap_write(&role->types, fp);
 if (rc)
  return rc;

 return 0;
}
