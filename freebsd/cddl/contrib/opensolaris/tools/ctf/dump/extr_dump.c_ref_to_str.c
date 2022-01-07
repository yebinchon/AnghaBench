
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_5__ {int cth_stroff; size_t cth_strlen; } ;
typedef TYPE_1__ ctf_header_t ;
struct TYPE_6__ {char* cd_ctfdata; scalar_t__ cd_ctflen; } ;
typedef TYPE_2__ ctf_data_t ;


 size_t CTF_NAME_OFFSET (int ) ;
 scalar_t__ CTF_NAME_STID (int ) ;
 scalar_t__ CTF_STRTAB_0 ;

__attribute__((used)) static const char *
ref_to_str(uint_t name, const ctf_header_t *hp, const ctf_data_t *cd)
{
 size_t offset = CTF_NAME_OFFSET(name);
 const char *s = cd->cd_ctfdata + hp->cth_stroff + offset;

 if (CTF_NAME_STID(name) != CTF_STRTAB_0)
  return ("<< ??? - name in external strtab >>");

 if (offset >= hp->cth_strlen)
  return ("<< ??? - name exceeds strlab len >>");

 if (hp->cth_stroff + offset >= cd->cd_ctflen)
  return ("<< ??? - file truncated >>");

 if (s[0] == '\0')
  return ("(anon)");

 return (s);
}
