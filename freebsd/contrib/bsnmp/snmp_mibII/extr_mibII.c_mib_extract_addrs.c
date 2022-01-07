
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sockaddr {int sa_len; } ;


 int RTAX_MAX ;
 int roundup (int ,int) ;

void
mib_extract_addrs(int addrs, u_char *info, struct sockaddr **out)
{
 u_int i;

 for (i = 0; i < RTAX_MAX; i++) {
  if ((addrs & (1 << i)) != 0) {
   *out = (struct sockaddr *)(void *)info;
   info += roundup((*out)->sa_len, sizeof(long));
  } else
   *out = ((void*)0);
  out++;
 }
}
