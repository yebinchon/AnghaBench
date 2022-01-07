
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfs4_stateid ;


 int nfs4_stateid_match (int const*,int const*) ;

__attribute__((used)) static bool nfs4_match_stateid(const nfs4_stateid *s1,
  const nfs4_stateid *s2)
{
 return nfs4_stateid_match(s1, s2);
}
