
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_bind_addr {scalar_t__ malloced; } ;


 int SCTP_DBG_OBJCNT_DEC (int ) ;
 int bind_addr ;
 int kfree (struct sctp_bind_addr*) ;
 int sctp_bind_addr_clean (struct sctp_bind_addr*) ;

void sctp_bind_addr_free(struct sctp_bind_addr *bp)
{

 sctp_bind_addr_clean(bp);

 if (bp->malloced) {
  kfree(bp);
  SCTP_DBG_OBJCNT_DEC(bind_addr);
 }
}
