
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct role_trans {size_t role; size_t type; size_t new_role; struct role_trans* next; } ;


 int cpu_to_le32 (size_t) ;
 int put_entry (int *,int,int,void*) ;

__attribute__((used)) static int role_trans_write(struct role_trans *r, void *fp)
{
 struct role_trans *tr;
 u32 buf[3];
 size_t nel;
 int rc;

 nel = 0;
 for (tr = r; tr; tr = tr->next)
  nel++;
 buf[0] = cpu_to_le32(nel);
 rc = put_entry(buf, sizeof(u32), 1, fp);
 if (rc)
  return rc;
 for (tr = r; tr; tr = tr->next) {
  buf[0] = cpu_to_le32(tr->role);
  buf[1] = cpu_to_le32(tr->type);
  buf[2] = cpu_to_le32(tr->new_role);
  rc = put_entry(buf, sizeof(u32), 3, fp);
  if (rc)
   return rc;
 }

 return 0;
}
