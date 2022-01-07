
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_auth_bytes {int refcnt; } ;


 int SCTP_DBG_OBJCNT_DEC (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int keys ;
 int kfree (struct sctp_auth_bytes*) ;

void sctp_auth_key_put(struct sctp_auth_bytes *key)
{
 if (!key)
  return;

 if (atomic_dec_and_test(&key->refcnt)) {
  kfree(key);
  SCTP_DBG_OBJCNT_DEC(keys);
 }
}
