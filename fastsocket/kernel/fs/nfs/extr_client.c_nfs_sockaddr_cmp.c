
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;




 int nfs_sockaddr_cmp_ip4 (struct sockaddr const*,struct sockaddr const*) ;
 int nfs_sockaddr_cmp_ip6 (struct sockaddr const*,struct sockaddr const*) ;

__attribute__((used)) static int nfs_sockaddr_cmp(const struct sockaddr *sa1,
       const struct sockaddr *sa2)
{
 if (sa1->sa_family != sa2->sa_family)
  return 0;

 switch (sa1->sa_family) {
 case 129:
  return nfs_sockaddr_cmp_ip4(sa1, sa2);
 case 128:
  return nfs_sockaddr_cmp_ip6(sa1, sa2);
 }
 return 0;
}
