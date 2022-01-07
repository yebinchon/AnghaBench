
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IP_VS_DBG_BUF (int,char*,int ,unsigned int) ;
 int IP_VS_DEBUG_CALLID (char const*,unsigned int) ;
 unsigned int IP_VS_PEDATA_MAXLEN ;
 int SIP_HDR_CALL_ID ;
 int ct_sip_get_header (int *,char const*,unsigned int,unsigned int,int ,unsigned int*,unsigned int*) ;

__attribute__((used)) static int get_callid(const char *dptr, unsigned int dataoff,
        unsigned int datalen,
        unsigned int *matchoff, unsigned int *matchlen)
{

 while (1) {
  int ret = ct_sip_get_header(((void*)0), dptr, dataoff, datalen,
         SIP_HDR_CALL_ID, matchoff,
         matchlen);
  if (ret > 0)
   break;
  if (!ret)
   return 0;
  dataoff += *matchoff;
 }


 if (!*matchlen)
  return -EINVAL;


 if (*matchlen > IP_VS_PEDATA_MAXLEN)
  return -EINVAL;


 if (*matchoff + *matchlen == datalen)
  return -EINVAL;



 if (*(dptr + *matchoff + *matchlen) != '\r' &&
     *(dptr + *matchoff + *matchlen) != '\n')
  return -EINVAL;

 IP_VS_DBG_BUF(9, "SIP callid %s (%d bytes)\n",
        IP_VS_DEBUG_CALLID(dptr + *matchoff, *matchlen),
        *matchlen);
 return 0;
}
