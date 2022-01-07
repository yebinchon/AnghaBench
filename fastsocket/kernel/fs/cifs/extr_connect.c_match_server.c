
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct smb_vol {int srcaddr; } ;
struct TCP_Server_Info {int dummy; } ;


 int match_address (struct TCP_Server_Info*,struct sockaddr*,struct sockaddr*) ;
 int match_port (struct TCP_Server_Info*,struct sockaddr*) ;
 int match_security (struct TCP_Server_Info*,struct smb_vol*) ;

__attribute__((used)) static int match_server(struct TCP_Server_Info *server, struct sockaddr *addr,
    struct smb_vol *vol)
{
 if (!match_address(server, addr,
      (struct sockaddr *)&vol->srcaddr))
  return 0;

 if (!match_port(server, addr))
  return 0;

 if (!match_security(server, vol))
  return 0;

 return 1;
}
