
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_lro_desc {int dummy; } ;


 int memset (struct net_lro_desc*,int ,int) ;

__attribute__((used)) static inline void lro_clear_desc(struct net_lro_desc *lro_desc)
{
 memset(lro_desc, 0, sizeof(struct net_lro_desc));
}
