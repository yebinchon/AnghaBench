
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_control_private {int op_state; } ;
struct file {struct ocfs2_control_private* private_data; } ;



__attribute__((used)) static inline void ocfs2_control_set_handshake_state(struct file *file,
           int state)
{
 struct ocfs2_control_private *p = file->private_data;
 p->op_state = state;
}
