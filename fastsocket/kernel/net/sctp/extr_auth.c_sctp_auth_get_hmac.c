
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_hmac {int dummy; } ;
typedef size_t __u16 ;


 struct sctp_hmac* sctp_hmac_list ;

struct sctp_hmac *sctp_auth_get_hmac(__u16 hmac_id)
{
 return &sctp_hmac_list[hmac_id];
}
