
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct TCP_Server_Info {int response_q; int dstaddr; } ;


 int CIFS_PORT ;




 int cERROR (int,char*,unsigned char) ;
 int cFYI (int,char*) ;
 int cifs_reconnect (struct TCP_Server_Info*) ;
 int cifs_set_port (struct sockaddr*,int ) ;
 int msleep (int) ;
 int wake_up (int *) ;

__attribute__((used)) static bool
is_smb_response(struct TCP_Server_Info *server, unsigned char type)
{





 switch (type) {
 case 128:

  return 1;
 case 129:
  cFYI(1, "RFC 1002 session keep alive");
  break;
 case 130:
  cFYI(1, "RFC 1002 positive session response");
  break;
 case 131:




  cFYI(1, "RFC 1002 negative session response");

  msleep(1000);






  cifs_set_port((struct sockaddr *)&server->dstaddr, CIFS_PORT);
  cifs_reconnect(server);
  wake_up(&server->response_q);
  break;
 default:
  cERROR(1, "RFC 1002 unknown response type 0x%x", type);
  cifs_reconnect(server);
 }

 return 0;
}
