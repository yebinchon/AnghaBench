
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int port_id; } ;
struct fc_rport_priv {TYPE_1__ ids; } ;
struct fc_els_spp {int spp_flags; } ;


 int ft_lport_lock ;
 int ft_prli_locked (struct fc_rport_priv*,int ,struct fc_els_spp const*,struct fc_els_spp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ,int) ;

__attribute__((used)) static int ft_prli(struct fc_rport_priv *rdata, u32 spp_len,
     const struct fc_els_spp *rspp, struct fc_els_spp *spp)
{
 int ret;

 mutex_lock(&ft_lport_lock);
 ret = ft_prli_locked(rdata, spp_len, rspp, spp);
 mutex_unlock(&ft_lport_lock);
 pr_debug("port_id %x flags %x ret %x\n",
        rdata->ids.port_id, rspp ? rspp->spp_flags : 0, ret);
 return ret;
}
