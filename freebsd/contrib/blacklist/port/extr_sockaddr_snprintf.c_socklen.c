
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_un {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr_dl {int dummy; } ;
struct sockaddr_at {int dummy; } ;
typedef int socklen_t ;
__attribute__((used)) static socklen_t
socklen(u_int af)
{
 switch (af) {
 case 131:
  return sizeof(struct sockaddr_in);
 case 130:
  return sizeof(struct sockaddr_in6);
 case 128:
  return sizeof(struct sockaddr_un);
 default:
  return sizeof(struct sockaddr_storage);
 }
}
