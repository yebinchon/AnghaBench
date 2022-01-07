
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_control_message_down {char space1; char space2; char newline; int uuid; int nodestr; int tag; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ERANGE ;
 long INT_MAX ;
 long LONG_MAX ;
 long LONG_MIN ;
 scalar_t__ OCFS2_CONTROL_HANDSHAKE_VALID ;
 int OCFS2_CONTROL_MESSAGE_DOWN_OP ;
 int OCFS2_CONTROL_MESSAGE_OP_LEN ;
 scalar_t__ ocfs2_control_get_handshake_state (struct file*) ;
 int ocfs2_control_send_down (int ,long) ;
 long simple_strtol (int ,char**,int) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static int ocfs2_control_do_down_msg(struct file *file,
         struct ocfs2_control_message_down *msg)
{
 long nodenum;
 char *p = ((void*)0);

 if (ocfs2_control_get_handshake_state(file) !=
     OCFS2_CONTROL_HANDSHAKE_VALID)
  return -EINVAL;

 if (strncmp(msg->tag, OCFS2_CONTROL_MESSAGE_DOWN_OP,
      OCFS2_CONTROL_MESSAGE_OP_LEN))
  return -EINVAL;

 if ((msg->space1 != ' ') || (msg->space2 != ' ') ||
     (msg->newline != '\n'))
  return -EINVAL;
 msg->space1 = msg->space2 = msg->newline = '\0';

 nodenum = simple_strtol(msg->nodestr, &p, 16);
 if (!p || *p)
  return -EINVAL;

 if ((nodenum == LONG_MIN) || (nodenum == LONG_MAX) ||
     (nodenum > INT_MAX) || (nodenum < 0))
  return -ERANGE;

 ocfs2_control_send_down(msg->uuid, nodenum);

 return 0;
}
