
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int cnt; size_t rix; TYPE_6__* ri; TYPE_2__* rr; } ;
struct TYPE_10__ {int ampdu; int erp_prot; } ;
struct TYPE_8__ {scalar_t__ set; } ;
struct TYPE_11__ {TYPE_3__ mac; TYPE_1__ phy; } ;
struct TYPE_12__ {TYPE_4__ hdr; } ;
struct carl9170_tx_superframe {TYPE_7__ s; TYPE_5__ f; } ;
struct TYPE_13__ {int tries; int ampdu; int erp_prot; } ;
struct TYPE_9__ {scalar_t__ set; } ;


 size_t CARL9170_TX_MAX_RETRY_RATES ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool wlan_tx_consume_retry(struct carl9170_tx_superframe *super)
{

 if (unlikely(super->s.cnt >= super->s.ri[super->s.rix].tries)) {

  if (unlikely(super->s.rix == CARL9170_TX_MAX_RETRY_RATES))
   return 0;


  if (!super->s.rr[super->s.rix].set)
   return 0;


  super->f.hdr.phy.set = super->s.rr[super->s.rix].set;


  super->s.rix++;


  super->f.hdr.mac.erp_prot = super->s.ri[super->s.rix].erp_prot;
  super->f.hdr.mac.ampdu = super->s.ri[super->s.rix].ampdu;


  super->s.cnt = 1;
 } else {

  super->s.cnt++;
 }

 return 1;
}
