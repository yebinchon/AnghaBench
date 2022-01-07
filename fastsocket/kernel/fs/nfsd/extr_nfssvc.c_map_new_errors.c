
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ __be32 ;


 scalar_t__ nfserr_acces ;
 scalar_t__ nfserr_dropit ;
 scalar_t__ nfserr_jukebox ;
 scalar_t__ nfserr_wrongsec ;

__attribute__((used)) static __be32 map_new_errors(u32 vers, __be32 nfserr)
{
 if (nfserr == nfserr_jukebox && vers == 2)
  return nfserr_dropit;
 if (nfserr == nfserr_wrongsec && vers < 4)
  return nfserr_acces;
 return nfserr;
}
