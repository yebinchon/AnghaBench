
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_value_buf {TYPE_1__* vb_xv; } ;
struct ocfs2_extent_tree {int * et_root_el; struct ocfs2_xattr_value_buf* et_object; } ;
struct TYPE_2__ {int xr_list; } ;



__attribute__((used)) static void ocfs2_xattr_value_fill_root_el(struct ocfs2_extent_tree *et)
{
 struct ocfs2_xattr_value_buf *vb = et->et_object;

 et->et_root_el = &vb->vb_xv->xr_list;
}
