
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_entry {int xe_type; } ;


 int OCFS2_XATTR_ENTRY_LOCAL ;

__attribute__((used)) static inline void ocfs2_xattr_set_local(struct ocfs2_xattr_entry *xe,
      int local)
{
 if (local)
  xe->xe_type |= OCFS2_XATTR_ENTRY_LOCAL;
 else
  xe->xe_type &= ~OCFS2_XATTR_ENTRY_LOCAL;
}
