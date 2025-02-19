
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct type_datum {size_t value; size_t primary; size_t bounds; scalar_t__ attribute; } ;
struct policydb {scalar_t__ policyvers; } ;
struct policy_data {void* fp; struct policydb* p; } ;
typedef int buf ;
typedef char __le32 ;


 int BUG_ON (int) ;
 scalar_t__ POLICYDB_VERSION_BOUNDARY ;
 size_t TYPEDATUM_PROPERTY_ATTRIBUTE ;
 size_t TYPEDATUM_PROPERTY_PRIMARY ;
 char cpu_to_le32 (size_t) ;
 int put_entry (char*,int,size_t,void*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int type_write(void *vkey, void *datum, void *ptr)
{
 char *key = vkey;
 struct type_datum *typdatum = datum;
 struct policy_data *pd = ptr;
 struct policydb *p = pd->p;
 void *fp = pd->fp;
 __le32 buf[4];
 int rc;
 size_t items, len;

 len = strlen(key);
 items = 0;
 buf[items++] = cpu_to_le32(len);
 buf[items++] = cpu_to_le32(typdatum->value);
 if (p->policyvers >= POLICYDB_VERSION_BOUNDARY) {
  u32 properties = 0;

  if (typdatum->primary)
   properties |= TYPEDATUM_PROPERTY_PRIMARY;

  if (typdatum->attribute)
   properties |= TYPEDATUM_PROPERTY_ATTRIBUTE;

  buf[items++] = cpu_to_le32(properties);
  buf[items++] = cpu_to_le32(typdatum->bounds);
 } else {
  buf[items++] = cpu_to_le32(typdatum->primary);
 }
 BUG_ON(items > (sizeof(buf) / sizeof(buf[0])));
 rc = put_entry(buf, sizeof(u32), items, fp);
 if (rc)
  return rc;

 rc = put_entry(key, 1, len, fp);
 if (rc)
  return rc;

 return 0;
}
