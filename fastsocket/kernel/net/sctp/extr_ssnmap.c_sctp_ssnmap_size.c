
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ssnmap {int dummy; } ;
typedef int __u16 ;



__attribute__((used)) static inline size_t sctp_ssnmap_size(__u16 in, __u16 out)
{
 return sizeof(struct sctp_ssnmap) + (in + out) * sizeof(__u16);
}
