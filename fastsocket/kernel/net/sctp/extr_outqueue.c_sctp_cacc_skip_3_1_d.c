
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int dummy; } ;



__attribute__((used)) static inline int sctp_cacc_skip_3_1_d(struct sctp_transport *primary,
           struct sctp_transport *transport,
           int count_of_newacks)
{
 if (count_of_newacks >=2 && transport != primary)
  return 1;
 return 0;
}
