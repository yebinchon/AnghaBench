
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int s ;
struct TYPE_3__ {int ip_net_num; int ip_net_name; struct TYPE_3__* ip_next; } ;
typedef TYPE_1__ addrlist ;


 char* SALLOC (int) ;
 TYPE_1__* localnets ;
 scalar_t__ strlen (char*) ;
 char* xrealloc (char*,int) ;
 int xsnprintf (char*,int,char*,int,int ,...) ;
 int xstrlcat (char*,char*,int) ;
 int xstrlcpy (char*,char*,int) ;

char *
print_wires(void)
{
  addrlist *al;
  char s[256];
  int i;
  char *buf;
  int bufcount = 0;
  int buf_size = 1024;

  buf = SALLOC(buf_size);
  if (!buf)
    return ((void*)0);

  if (!localnets) {
    xstrlcpy(buf, "No networks\n", buf_size);
    return buf;
  }

  if (!localnets->ip_next) {

    xsnprintf(buf, buf_size,
       "Network: wire=\"%s\" (netnumber=%s).\n",
       localnets->ip_net_name, localnets->ip_net_num);
    return buf;
  }
  buf[0] = '\0';
  for (i = 1, al = localnets; al; al = al->ip_next, i++) {
    xsnprintf(s, sizeof(s), "Network %d: wire=\"%s\" (netnumber=%s).\n",
       i, al->ip_net_name, al->ip_net_num);
    bufcount += strlen(s);
    if (bufcount > buf_size) {
      buf_size *= 2;
      buf = xrealloc(buf, buf_size);
    }
    xstrlcat(buf, s, buf_size);
  }
  return buf;
}
