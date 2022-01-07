
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_6__ {size_t cth_strlen; int cth_stroff; } ;
typedef TYPE_1__ ctf_header_t ;
struct TYPE_7__ {char* cd_ctfdata; scalar_t__ cd_ctflen; } ;
typedef TYPE_2__ ctf_data_t ;
struct TYPE_8__ {size_t s_strlen; int s_strmax; int s_nstr; } ;


 int E_SUCCESS ;
 scalar_t__ F_STATS ;
 int MAX (int ,size_t) ;
 int WARN (char*) ;
 scalar_t__ flags ;
 int print_line (char*) ;
 int printf (char*,int ,char*) ;
 TYPE_3__ stats ;
 int strlen (char const*) ;

__attribute__((used)) static int
read_strtab(const ctf_header_t *hp, const ctf_data_t *cd)
{
 size_t n, off, len = hp->cth_strlen;
 const char *s = cd->cd_ctfdata + hp->cth_stroff;

 if (flags != F_STATS)
  print_line("- String Table ");

 if (hp->cth_stroff >= cd->cd_ctflen)
  WARN("file is truncated or cth_stroff is corrupt\n");
 if (hp->cth_stroff + hp->cth_strlen > cd->cd_ctflen)
  WARN("file is truncated or cth_strlen is corrupt\n");

 for (off = 0; len != 0; off += n) {
  if (flags != F_STATS) {
   (void) printf("  [%lu] %s\n", (ulong_t)off,
       s[0] == '\0' ? "\\0" : s);
  }
  n = strlen(s) + 1;
  len -= n;
  s += n;

  stats.s_nstr++;
  stats.s_strlen += n;
  stats.s_strmax = MAX(stats.s_strmax, n);
 }

 return (E_SUCCESS);
}
