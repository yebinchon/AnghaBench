
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_control_private {int op_state; } ;
struct file {struct ocfs2_control_private* private_data; } ;



__attribute__((used)) static inline int ocfs2_control_get_handshake_state(struct file *file)
{
 struct ocfs2_control_private *p = file->private_data;
 return p->op_state;
}
