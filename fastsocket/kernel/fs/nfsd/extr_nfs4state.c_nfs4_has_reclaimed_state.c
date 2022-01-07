
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int dummy; } ;


 unsigned int clientstr_hashval (char const*) ;
 struct nfs4_client* find_confirmed_client_by_str (char const*,unsigned int,int) ;

int
nfs4_has_reclaimed_state(const char *name, bool use_exchange_id)
{
 unsigned int strhashval = clientstr_hashval(name);
 struct nfs4_client *clp;

 clp = find_confirmed_client_by_str(name, strhashval, use_exchange_id);
 return clp ? 1 : 0;
}
