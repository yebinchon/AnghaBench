
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 TYPE_1__* SOCKET_I (struct inode*) ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ S_ISSOCK (int ) ;

int
smb_valid_socket(struct inode * inode)
{
 return (inode && S_ISSOCK(inode->i_mode) &&
  SOCKET_I(inode)->type == SOCK_STREAM);
}
