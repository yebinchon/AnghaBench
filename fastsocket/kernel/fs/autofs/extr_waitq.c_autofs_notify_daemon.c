
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct autofs_wait_queue {size_t len; int name; int wait_queue_token; } ;
struct autofs_sb_info {int pipe; } ;
struct TYPE_2__ {int type; int proto_version; } ;
struct autofs_packet_missing {size_t len; char* name; int wait_queue_token; TYPE_1__ hdr; } ;


 int AUTOFS_PROTO_VERSION ;
 int DPRINTK (char*) ;
 int autofs_catatonic_mode (struct autofs_sb_info*) ;
 int autofs_ptype_missing ;
 int autofs_say (int ,size_t) ;
 scalar_t__ autofs_write (int ,struct autofs_packet_missing*,int) ;
 int memcpy (char*,int ,size_t) ;
 int memset (struct autofs_packet_missing*,int ,int) ;

__attribute__((used)) static void autofs_notify_daemon(struct autofs_sb_info *sbi, struct autofs_wait_queue *wq)
{
 struct autofs_packet_missing pkt;

 DPRINTK(("autofs_wait: wait id = 0x%08lx, name = ", wq->wait_queue_token));
 autofs_say(wq->name,wq->len);

 memset(&pkt,0,sizeof pkt);

 pkt.hdr.proto_version = AUTOFS_PROTO_VERSION;
 pkt.hdr.type = autofs_ptype_missing;
 pkt.wait_queue_token = wq->wait_queue_token;
 pkt.len = wq->len;
        memcpy(pkt.name, wq->name, pkt.len);
 pkt.name[pkt.len] = '\0';

 if ( autofs_write(sbi->pipe,&pkt,sizeof(struct autofs_packet_missing)) )
  autofs_catatonic_mode(sbi);
}
