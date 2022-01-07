
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_sndrcvinfo {int sinfo_flags; int sinfo_ppid; int sinfo_stream; } ;
struct sctp_datahdr {void* ssn; int ppid; void* stream; scalar_t__ tsn; } ;
struct TYPE_2__ {int data_hdr; } ;
struct sctp_chunk {int sinfo; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef int dp ;
typedef int __u8 ;
typedef int __u16 ;


 int SCTP_CID_DATA ;
 int SCTP_DATA_UNORDERED ;
 int SCTP_UNORDERED ;
 void* htons (int ) ;
 int memcpy (int *,struct sctp_sndrcvinfo const*,int) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_datahdr*) ;
 struct sctp_chunk* sctp_make_chunk (struct sctp_association*,int ,int ,int) ;

struct sctp_chunk *sctp_make_datafrag_empty(struct sctp_association *asoc,
           const struct sctp_sndrcvinfo *sinfo,
           int data_len, __u8 flags, __u16 ssn)
{
 struct sctp_chunk *retval;
 struct sctp_datahdr dp;
 int chunk_len;




 dp.tsn = 0;
 dp.stream = htons(sinfo->sinfo_stream);
 dp.ppid = sinfo->sinfo_ppid;


 if (sinfo->sinfo_flags & SCTP_UNORDERED) {
  flags |= SCTP_DATA_UNORDERED;
  dp.ssn = 0;
 } else
  dp.ssn = htons(ssn);

 chunk_len = sizeof(dp) + data_len;
 retval = sctp_make_chunk(asoc, SCTP_CID_DATA, flags, chunk_len);
 if (!retval)
  goto nodata;

 retval->subh.data_hdr = sctp_addto_chunk(retval, sizeof(dp), &dp);
 memcpy(&retval->sinfo, sinfo, sizeof(struct sctp_sndrcvinfo));

nodata:
 return retval;
}
