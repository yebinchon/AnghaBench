
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ scnprintf (char*,int,char*,...) ;

__attribute__((used)) static inline int bscnl_emit(char *buf, int buflen, int rbot, int rtop, int len)
{
 if (len > 0)
  len += scnprintf(buf + len, buflen - len, ",");
 if (rbot == rtop)
  len += scnprintf(buf + len, buflen - len, "%d", rbot);
 else
  len += scnprintf(buf + len, buflen - len, "%d-%d", rbot, rtop);
 return len;
}
