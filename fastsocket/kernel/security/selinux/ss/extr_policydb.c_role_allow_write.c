
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct role_allow {size_t role; size_t new_role; struct role_allow* next; } ;


 int cpu_to_le32 (size_t) ;
 int put_entry (int *,int,int,void*) ;

__attribute__((used)) static int role_allow_write(struct role_allow *r, void *fp)
{
 struct role_allow *ra;
 u32 buf[2];
 size_t nel;
 int rc;

 nel = 0;
 for (ra = r; ra; ra = ra->next)
  nel++;
 buf[0] = cpu_to_le32(nel);
 rc = put_entry(buf, sizeof(u32), 1, fp);
 if (rc)
  return rc;
 for (ra = r; ra; ra = ra->next) {
  buf[0] = cpu_to_le32(ra->role);
  buf[1] = cpu_to_le32(ra->new_role);
  rc = put_entry(buf, sizeof(u32), 2, fp);
  if (rc)
   return rc;
 }
 return 0;
}
