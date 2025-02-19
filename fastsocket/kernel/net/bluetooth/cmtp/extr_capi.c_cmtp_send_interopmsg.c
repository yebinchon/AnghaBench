
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cmtp_session {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int BT_DBG (char*,struct cmtp_session*,int,int,int) ;
 int BT_ERR (char*) ;
 int CAPI_INTEROPERABILITY ;
 int CAPI_MSG_BASELEN ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int capimsg_setu16 (unsigned char*,int,int) ;
 int capimsg_setu8 (unsigned char*,int,int) ;
 int cmtp_send_capimsg (struct cmtp_session*,struct sk_buff*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 unsigned char* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void cmtp_send_interopmsg(struct cmtp_session *session,
     __u8 subcmd, __u16 appl, __u16 msgnum,
     __u16 function, unsigned char *buf, int len)
{
 struct sk_buff *skb;
 unsigned char *s;

 BT_DBG("session %p subcmd 0x%02x appl %d msgnum %d", session, subcmd, appl, msgnum);

 if (!(skb = alloc_skb(CAPI_MSG_BASELEN + 6 + len, GFP_ATOMIC))) {
  BT_ERR("Can't allocate memory for interoperability packet");
  return;
 }

 s = skb_put(skb, CAPI_MSG_BASELEN + 6 + len);

 capimsg_setu16(s, 0, CAPI_MSG_BASELEN + 6 + len);
 capimsg_setu16(s, 2, appl);
 capimsg_setu8 (s, 4, CAPI_INTEROPERABILITY);
 capimsg_setu8 (s, 5, subcmd);
 capimsg_setu16(s, 6, msgnum);


 capimsg_setu16(s, 8, 0x0001);

 capimsg_setu8 (s, 10, 3 + len);
 capimsg_setu16(s, 11, function);
 capimsg_setu8 (s, 13, len);

 if (len > 0)
  memcpy(s + 14, buf, len);

 cmtp_send_capimsg(session, skb);
}
