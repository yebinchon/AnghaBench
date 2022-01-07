
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_ctl {scalar_t__ idx; scalar_t__ type; scalar_t__ proto; scalar_t__ addrlen; int addr; } ;


 int memcmp (int *,int *,scalar_t__) ;

__attribute__((used)) static inline int pohmelfs_config_eql(struct pohmelfs_ctl *sc, struct pohmelfs_ctl *ctl)
{
 if (sc->idx == ctl->idx && sc->type == ctl->type &&
   sc->proto == ctl->proto &&
   sc->addrlen == ctl->addrlen &&
   !memcmp(&sc->addr, &ctl->addr, ctl->addrlen))
  return 1;

 return 0;
}
