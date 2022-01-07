
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dccp_sock {struct ccid* dccps_hc_tx_ccid; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int ccid_ccmps; } ;



__attribute__((used)) static u32 dccp_determine_ccmps(const struct dccp_sock *dp)
{
 const struct ccid *tx_ccid = dp->dccps_hc_tx_ccid;

 if (tx_ccid == ((void*)0) || tx_ccid->ccid_ops == ((void*)0))
  return 0;
 return tx_ccid->ccid_ops->ccid_ccmps;
}
