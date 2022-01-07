
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_entry {int xe_type; } ;


 int OCFS2_XATTR_TYPE_MASK ;

__attribute__((used)) static inline void ocfs2_xattr_set_type(struct ocfs2_xattr_entry *xe, int type)
{
 xe->xe_type |= type & OCFS2_XATTR_TYPE_MASK;
}
