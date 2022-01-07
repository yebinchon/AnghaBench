
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int DEBUG1 (char*) ;
 int EAGAIN ;
 int EIO ;
 int ENODATA ;
 int MSG_PEEK ;
 int PARANOIA (char*,unsigned char) ;
 int _recvfrom (struct socket*,unsigned char*,int,int ) ;
 int smb_len (unsigned char*) ;

__attribute__((used)) static int
smb_get_length(struct socket *socket, unsigned char *header)
{
 int result;

 result = _recvfrom(socket, header, 4, MSG_PEEK);
 if (result == -EAGAIN)
  return -ENODATA;
 if (result < 0) {
  PARANOIA("recv error = %d\n", -result);
  return result;
 }
 if (result < 4)
  return -ENODATA;

 switch (header[0]) {
 case 0x00:
 case 0x82:
  break;

 case 0x85:
  DEBUG1("Got SESSION KEEP ALIVE\n");
  _recvfrom(socket, header, 4, 0);
  return -ENODATA;

 default:
  PARANOIA("Invalid NBT packet, code=%x\n", header[0]);
  return -EIO;
 }


 return smb_len(header);
}
