
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_devconf {int accept_dad; int disable_ipv6; int mc_forwarding; int optimistic_dad; int accept_source_route; int proxy_ndp; int accept_ra_rt_info_max_plen; int rtr_probe_interval; int accept_ra_rtr_pref; int accept_ra_pinfo; int accept_ra_defrtr; int max_addresses; int max_desync_factor; int regen_max_retry; int temp_prefered_lft; int temp_valid_lft; int use_tempaddr; int force_mld_version; int rtr_solicit_delay; int rtr_solicit_interval; int rtr_solicits; int dad_transmits; int autoconf; int accept_redirects; int accept_ra; int mtu6; int hop_limit; int forwarding; } ;
typedef int __s32 ;


 int BUG_ON (int) ;
 size_t DEVCONF_ACCEPT_DAD ;
 size_t DEVCONF_ACCEPT_RA ;
 size_t DEVCONF_ACCEPT_RA_DEFRTR ;
 size_t DEVCONF_ACCEPT_RA_PINFO ;
 size_t DEVCONF_ACCEPT_RA_RTR_PREF ;
 size_t DEVCONF_ACCEPT_RA_RT_INFO_MAX_PLEN ;
 size_t DEVCONF_ACCEPT_REDIRECTS ;
 size_t DEVCONF_ACCEPT_SOURCE_ROUTE ;
 size_t DEVCONF_AUTOCONF ;
 size_t DEVCONF_DAD_TRANSMITS ;
 size_t DEVCONF_DISABLE_IPV6 ;
 size_t DEVCONF_FORCE_MLD_VERSION ;
 size_t DEVCONF_FORWARDING ;
 size_t DEVCONF_HOPLIMIT ;
 int DEVCONF_MAX ;
 size_t DEVCONF_MAX_ADDRESSES ;
 size_t DEVCONF_MAX_DESYNC_FACTOR ;
 size_t DEVCONF_MC_FORWARDING ;
 size_t DEVCONF_MTU6 ;
 size_t DEVCONF_OPTIMISTIC_DAD ;
 size_t DEVCONF_PROXY_NDP ;
 size_t DEVCONF_REGEN_MAX_RETRY ;
 size_t DEVCONF_RTR_PROBE_INTERVAL ;
 size_t DEVCONF_RTR_SOLICITS ;
 size_t DEVCONF_RTR_SOLICIT_DELAY ;
 size_t DEVCONF_RTR_SOLICIT_INTERVAL ;
 size_t DEVCONF_TEMP_PREFERED_LFT ;
 size_t DEVCONF_TEMP_VALID_LFT ;
 size_t DEVCONF_USE_TEMPADDR ;
 int memset (int *,int ,int) ;

__attribute__((used)) static inline void ipv6_store_devconf(struct ipv6_devconf *cnf,
    __s32 *array, int bytes)
{
 BUG_ON(bytes < (DEVCONF_MAX * 4));

 memset(array, 0, bytes);
 array[DEVCONF_FORWARDING] = cnf->forwarding;
 array[DEVCONF_HOPLIMIT] = cnf->hop_limit;
 array[DEVCONF_MTU6] = cnf->mtu6;
 array[DEVCONF_ACCEPT_RA] = cnf->accept_ra;
 array[DEVCONF_ACCEPT_REDIRECTS] = cnf->accept_redirects;
 array[DEVCONF_AUTOCONF] = cnf->autoconf;
 array[DEVCONF_DAD_TRANSMITS] = cnf->dad_transmits;
 array[DEVCONF_RTR_SOLICITS] = cnf->rtr_solicits;
 array[DEVCONF_RTR_SOLICIT_INTERVAL] = cnf->rtr_solicit_interval;
 array[DEVCONF_RTR_SOLICIT_DELAY] = cnf->rtr_solicit_delay;
 array[DEVCONF_FORCE_MLD_VERSION] = cnf->force_mld_version;







 array[DEVCONF_MAX_ADDRESSES] = cnf->max_addresses;
 array[DEVCONF_ACCEPT_RA_DEFRTR] = cnf->accept_ra_defrtr;
 array[DEVCONF_ACCEPT_RA_PINFO] = cnf->accept_ra_pinfo;







 array[DEVCONF_PROXY_NDP] = cnf->proxy_ndp;
 array[DEVCONF_ACCEPT_SOURCE_ROUTE] = cnf->accept_source_route;






 array[DEVCONF_DISABLE_IPV6] = cnf->disable_ipv6;
 array[DEVCONF_ACCEPT_DAD] = cnf->accept_dad;
}
