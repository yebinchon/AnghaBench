
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
struct sctp_chunks_param {int* chunks; TYPE_1__ param_hdr; } ;
typedef int sctp_paramhdr_t ;
typedef int sctp_cid_t ;






 int ntohs (scalar_t__) ;

__attribute__((used)) static int __sctp_auth_cid(sctp_cid_t chunk, struct sctp_chunks_param *param)
{
 unsigned short len;
 int found = 0;
 int i;

 if (!param || param->param_hdr.length == 0)
  return 0;

 len = ntohs(param->param_hdr.length) - sizeof(sctp_paramhdr_t);







 for (i = 0; !found && i < len; i++) {
  switch (param->chunks[i]) {
      case 130:
      case 129:
      case 128:
      case 131:
   break;

      default:
   if (param->chunks[i] == chunk)
       found = 1;
   break;
  }
 }

 return found;
}
