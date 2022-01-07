
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int ssize_t ;


 int DBG_DUMP_PKTS ;
 int LOG_ERR ;
 int LOG_INFO ;
 size_t NTPC_DMAX ;
 int NTPC_MAX ;
 int NTPC_MODE ;
 int NTPC_VERSION ;
 int dump_packet (int *,int) ;
 int free (int *) ;
 int * malloc (int ) ;
 int memcpy (int *,char const*,size_t) ;
 int memset (int *,int ,int ) ;
 int ntp_debug ;
 int ntpd_sock ;
 int send (int ,int *,int,int ) ;
 scalar_t__ seqno ;
 size_t strlen (char const*) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int
ntpd_request(u_int op, u_int associd, const char *vars)
{
 u_char *rpkt;
 u_char *ptr;
 size_t vlen;
 ssize_t ret;

 if ((rpkt = malloc(NTPC_MAX)) == ((void*)0)) {
  syslog(LOG_ERR, "%m");
  return (-1);
 }
 memset(rpkt, 0, NTPC_MAX);

 ptr = rpkt;
 *ptr++ = (NTPC_VERSION << 3) | NTPC_MODE;
 *ptr++ = op;

 if (++seqno == 0)
  seqno++;
 *ptr++ = seqno >> 8;
 *ptr++ = seqno;


 ptr += 2;

 *ptr++ = associd >> 8;
 *ptr++ = associd;


 ptr += 2;

 if (vars != ((void*)0)) {
  vlen = strlen(vars);
  if (vlen > NTPC_DMAX) {
   syslog(LOG_ERR, "NTP request too long (%zu)", vlen);
   free(rpkt);
   return (-1);
  }
  *ptr++ = vlen >> 8;
  *ptr++ = vlen;

  memcpy(ptr, vars, vlen);
  ptr += vlen;
 } else

  ptr += 2;

 while ((ptr - rpkt) % 4 != 0)
  *ptr++ = 0;

 if (ntp_debug & DBG_DUMP_PKTS) {
  syslog(LOG_INFO, "sending %zd bytes", ptr - rpkt);
  dump_packet(rpkt, ptr - rpkt);
 }

 ret = send(ntpd_sock, rpkt, ptr - rpkt, 0);
 if (ret == -1) {
  syslog(LOG_ERR, "cannot send to ntpd: %m");
  free(rpkt);
  return (-1);
 }
 return (0);
}
