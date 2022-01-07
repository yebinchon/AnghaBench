
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sock {int dummy; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int (* ccid_hc_rx_parse_options ) (struct sock*,unsigned char,unsigned char,int ,unsigned char*) ;} ;


 int stub1 (struct sock*,unsigned char,unsigned char,int ,unsigned char*) ;

__attribute__((used)) static inline int ccid_hc_rx_parse_options(struct ccid *ccid, struct sock *sk,
        unsigned char option,
        unsigned char len, u16 idx,
        unsigned char* value)
{
 int rc = 0;
 if (ccid->ccid_ops->ccid_hc_rx_parse_options != ((void*)0))
  rc = ccid->ccid_ops->ccid_hc_rx_parse_options(sk, option, len, idx, value);
 return rc;
}
