
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smb_hdr {int smb_buf_length; } ;
struct TYPE_3__ {int called_len; int calling_len; scalar_t__ scope2; scalar_t__ scope1; int calling_name; int called_name; } ;
struct TYPE_4__ {TYPE_1__ session_req; } ;
struct rfc1002_session_packet {TYPE_2__ trailer; } ;
struct TCP_Server_Info {scalar_t__* server_RFC1001_name; scalar_t__* workstation_RFC1001_name; } ;


 char* DEFAULT_CIFS_CALLED_NAME ;
 int GFP_KERNEL ;
 int RFC1001_NAME_LEN_WITH_NULL ;
 int cpu_to_be32 (int) ;
 int kfree (struct rfc1002_session_packet*) ;
 struct rfc1002_session_packet* kzalloc (int,int ) ;
 int msleep (int) ;
 int rfc1002mangle (int ,char*,int ) ;
 int smb_send (struct TCP_Server_Info*,struct smb_hdr*,int) ;

__attribute__((used)) static int
ip_rfc1001_connect(struct TCP_Server_Info *server)
{
 int rc = 0;





 struct rfc1002_session_packet *ses_init_buf;
 struct smb_hdr *smb_buf;
 ses_init_buf = kzalloc(sizeof(struct rfc1002_session_packet),
          GFP_KERNEL);
 if (ses_init_buf) {
  ses_init_buf->trailer.session_req.called_len = 32;

  if (server->server_RFC1001_name &&
      server->server_RFC1001_name[0] != 0)
   rfc1002mangle(ses_init_buf->trailer.
          session_req.called_name,
          server->server_RFC1001_name,
          RFC1001_NAME_LEN_WITH_NULL);
  else
   rfc1002mangle(ses_init_buf->trailer.
          session_req.called_name,
          DEFAULT_CIFS_CALLED_NAME,
          RFC1001_NAME_LEN_WITH_NULL);

  ses_init_buf->trailer.session_req.calling_len = 32;





  if (server->workstation_RFC1001_name &&
      server->workstation_RFC1001_name[0] != 0)
   rfc1002mangle(ses_init_buf->trailer.
          session_req.calling_name,
          server->workstation_RFC1001_name,
          RFC1001_NAME_LEN_WITH_NULL);
  else
   rfc1002mangle(ses_init_buf->trailer.
          session_req.calling_name,
          "LINUX_CIFS_CLNT",
          RFC1001_NAME_LEN_WITH_NULL);

  ses_init_buf->trailer.session_req.scope1 = 0;
  ses_init_buf->trailer.session_req.scope2 = 0;
  smb_buf = (struct smb_hdr *)ses_init_buf;


  smb_buf->smb_buf_length = cpu_to_be32(0x81000044);
  rc = smb_send(server, smb_buf, 0x44);
  kfree(ses_init_buf);
  msleep(1);
 }





 return rc;
}
