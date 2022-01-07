
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;


 scalar_t__ nfs_sockaddr_match_ipaddr4 (struct sockaddr const*,struct sockaddr const*) ;

__attribute__((used)) static int nfs_sockaddr_cmp_ip4(const struct sockaddr *sa1,
    const struct sockaddr *sa2)
{
 const struct sockaddr_in *sin1 = (const struct sockaddr_in *)sa1;
 const struct sockaddr_in *sin2 = (const struct sockaddr_in *)sa2;

 return nfs_sockaddr_match_ipaddr4(sa1, sa2) &&
  (sin1->sin_port == sin2->sin_port);
}
