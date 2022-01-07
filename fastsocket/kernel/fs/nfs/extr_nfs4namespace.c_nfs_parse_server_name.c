
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ nfs_dns_resolve_name (char*,size_t,struct sockaddr*,size_t) ;
 scalar_t__ rpc_pton (char*,size_t,struct sockaddr*,size_t) ;

__attribute__((used)) static size_t nfs_parse_server_name(char *string, size_t len,
  struct sockaddr *sa, size_t salen)
{
 ssize_t ret;

 ret = rpc_pton(string, len, sa, salen);
 if (ret == 0) {
  ret = nfs_dns_resolve_name(string, len, sa, salen);
  if (ret < 0)
   ret = 0;
 }
 return ret;
}
