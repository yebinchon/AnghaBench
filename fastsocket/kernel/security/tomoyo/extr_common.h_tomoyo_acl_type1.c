
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_acl_info {int type; } ;


 int TOMOYO_ACL_DELETED ;

__attribute__((used)) static inline u8 tomoyo_acl_type1(struct tomoyo_acl_info *ptr)
{
 return ptr->type & ~TOMOYO_ACL_DELETED;
}
