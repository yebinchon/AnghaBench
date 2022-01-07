
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_options {int def_tx_hdr; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int wlp_tx_hdr_phy_rate (int *) ;

ssize_t uwb_phy_rate_show(const struct wlp_options *options, char *buf)
{
 return sprintf(buf, "%u\n",
         wlp_tx_hdr_phy_rate(&options->def_tx_hdr));
}
