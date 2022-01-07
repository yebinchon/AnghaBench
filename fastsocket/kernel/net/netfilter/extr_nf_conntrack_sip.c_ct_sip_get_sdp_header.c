
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sip_header {int len; unsigned int (* match_len ) (struct nf_conn const*,char const*,char const*,int*) ;int slen; scalar_t__ search; int name; } ;
struct nf_conn {int dummy; } ;
typedef enum sdp_header_types { ____Placeholder_sdp_header_types } sdp_header_types ;


 int SDP_HDR_UNSPEC ;
 struct sip_header* ct_sdp_hdrs ;
 char* ct_sdp_header_search (char const*,char const*,scalar_t__,int ) ;
 scalar_t__ strnicmp (char const*,int ,int) ;
 unsigned int stub1 (struct nf_conn const*,char const*,char const*,int*) ;

int ct_sip_get_sdp_header(const struct nf_conn *ct, const char *dptr,
     unsigned int dataoff, unsigned int datalen,
     enum sdp_header_types type,
     enum sdp_header_types term,
     unsigned int *matchoff, unsigned int *matchlen)
{
 const struct sip_header *hdr = &ct_sdp_hdrs[type];
 const struct sip_header *thdr = &ct_sdp_hdrs[term];
 const char *start = dptr, *limit = dptr + datalen;
 int shift = 0;

 for (dptr += dataoff; dptr < limit; dptr++) {

  if (*dptr != '\r' && *dptr != '\n')
   continue;
  if (++dptr >= limit)
   break;
  if (*(dptr - 1) == '\r' && *dptr == '\n') {
   if (++dptr >= limit)
    break;
  }

  if (term != SDP_HDR_UNSPEC &&
      limit - dptr >= thdr->len &&
      strnicmp(dptr, thdr->name, thdr->len) == 0)
   break;
  else if (limit - dptr >= hdr->len &&
    strnicmp(dptr, hdr->name, hdr->len) == 0)
   dptr += hdr->len;
  else
   continue;

  *matchoff = dptr - start;
  if (hdr->search) {
   dptr = ct_sdp_header_search(dptr, limit, hdr->search,
          hdr->slen);
   if (!dptr)
    return -1;
   dptr += hdr->slen;
  }

  *matchlen = hdr->match_len(ct, dptr, limit, &shift);
  if (!*matchlen)
   return -1;
  *matchoff = dptr - start + shift;
  return 1;
 }
 return 0;
}
