
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scnprintf (char*,int,char*,unsigned char const) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static size_t _format_mac_addr(char *buf, int buflen,
    const unsigned char *addr, int len)
{
 int i;
 char *cp = buf;

 for (i = 0; i < len; i++) {
  cp += scnprintf(cp, buflen - (cp - buf), "%02x", addr[i]);
  if (i == len - 1)
   break;
  cp += strlcpy(cp, ":", buflen - (cp - buf));
 }
 return cp - buf;
}
