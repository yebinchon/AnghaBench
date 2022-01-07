
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int flags; } ;


 int LOOKUP_CONTINUE ;
 int LOOKUP_PARENT ;

__attribute__((used)) static inline unsigned int nfs_lookup_check_intent(struct nameidata *nd, unsigned int mask)
{
 if (nd->flags & (LOOKUP_CONTINUE|LOOKUP_PARENT))
  return 0;
 return nd->flags & mask;
}
