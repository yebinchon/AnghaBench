
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mls_level {int cat; int sens; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;
 int ebitmap_write (int *,void*) ;
 int put_entry (int *,int,int,void*) ;

__attribute__((used)) static int mls_write_level(struct mls_level *l, void *fp)
{
 __le32 buf[1];
 int rc;

 buf[0] = cpu_to_le32(l->sens);
 rc = put_entry(buf, sizeof(u32), 1, fp);
 if (rc)
  return rc;

 rc = ebitmap_write(&l->cat, fp);
 if (rc)
  return rc;

 return 0;
}
