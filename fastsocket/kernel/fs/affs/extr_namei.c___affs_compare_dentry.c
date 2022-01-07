
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ (* toupper_t ) (int ) ;
struct qstr {int len; int * name; } ;
struct dentry {int dummy; } ;


 scalar_t__ affs_check_name (int *,int) ;

__attribute__((used)) static inline int
__affs_compare_dentry(struct dentry *dentry, struct qstr *a, struct qstr *b, toupper_t toupper)
{
 const u8 *aname = a->name;
 const u8 *bname = b->name;
 int len;





 if (affs_check_name(b->name,b->len))
  return 1;




 len = a->len;
 if (len >= 30) {
  if (b->len < 30)
   return 1;
  len = 30;
 } else if (len != b->len)
  return 1;

 for (; len > 0; len--)
  if (toupper(*aname++) != toupper(*bname++))
   return 1;

 return 0;
}
