
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_association {int unack_data; int next_tsn; } ;
typedef int __u32 ;



__u32 sctp_association_get_next_tsn(struct sctp_association *asoc)
{





 __u32 retval = asoc->next_tsn;
 asoc->next_tsn++;
 asoc->unack_data++;

 return retval;
}
