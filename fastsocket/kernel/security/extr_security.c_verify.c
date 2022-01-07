
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct security_operations {int dummy; } ;


 int EINVAL ;
 int security_fixup_ops (struct security_operations*) ;

__attribute__((used)) static inline int verify(struct security_operations *ops)
{

 if (!ops)
  return -EINVAL;
 security_fixup_ops(ops);
 return 0;
}
