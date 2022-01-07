
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ changeover_active; } ;
struct sctp_transport {TYPE_1__ cacc; } ;
typedef int __u32 ;


 scalar_t__ sctp_cacc_skip_3_1 (struct sctp_transport*,struct sctp_transport*,int) ;
 scalar_t__ sctp_cacc_skip_3_2 (struct sctp_transport*,int ) ;

__attribute__((used)) static inline int sctp_cacc_skip(struct sctp_transport *primary,
     struct sctp_transport *transport,
     int count_of_newacks,
     __u32 tsn)
{
 if (primary->cacc.changeover_active &&
     (sctp_cacc_skip_3_1(primary, transport, count_of_newacks)
      || sctp_cacc_skip_3_2(primary, tsn)))
  return 1;
 return 0;
}
