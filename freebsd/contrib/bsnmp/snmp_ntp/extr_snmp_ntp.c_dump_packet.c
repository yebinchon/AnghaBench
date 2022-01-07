
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int LOG_INFO ;
 int sprintf (char*,char*,int const) ;
 int strlen (char*) ;
 int syslog (int ,char*,size_t,char*) ;

__attribute__((used)) static void
dump_packet(const u_char *pkt, size_t ret)
{
 char buf[8 * 3 + 1];
 size_t i, j;

 for (i = 0; i < ret; i += 8) {
  buf[0] = '\0';
  for (j = 0; i + j < (size_t)ret && j < 8; j++)
   sprintf(buf + strlen(buf), " %02x", pkt[i + j]);
  syslog(LOG_INFO, "%04zu:%s", i, buf);
 }
}
