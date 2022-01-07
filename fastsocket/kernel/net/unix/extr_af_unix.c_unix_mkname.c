
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {scalar_t__ sun_family; scalar_t__* sun_path; } ;


 scalar_t__ AF_UNIX ;
 int EINVAL ;
 int csum_partial (struct sockaddr_un*,int,int ) ;
 int strlen (scalar_t__*) ;
 unsigned int unix_hash_fold (int ) ;

__attribute__((used)) static int unix_mkname(struct sockaddr_un *sunaddr, int len, unsigned *hashp)
{
 if (len <= sizeof(short) || len > sizeof(*sunaddr))
  return -EINVAL;
 if (!sunaddr || sunaddr->sun_family != AF_UNIX)
  return -EINVAL;
 if (sunaddr->sun_path[0]) {







  ((char *)sunaddr)[len] = 0;
  len = strlen(sunaddr->sun_path)+1+sizeof(short);
  return len;
 }

 *hashp = unix_hash_fold(csum_partial(sunaddr, len, 0));
 return len;
}
