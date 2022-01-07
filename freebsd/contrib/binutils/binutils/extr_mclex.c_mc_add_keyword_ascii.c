
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unichar ;
typedef int rc_uint_type ;


 int CP_ACP ;
 int mc_add_keyword (int *,int,char const*,int ,int *) ;
 int unicode_from_codepage (int *,int **,char const*,int ) ;

__attribute__((used)) static void
mc_add_keyword_ascii (const char *sz, int rid, const char *grp, rc_uint_type nv, const char *sv)
{
  unichar *usz, *usv = ((void*)0);
  rc_uint_type usz_len;

  unicode_from_codepage (&usz_len, &usz, sz, CP_ACP);
  if (sv)
    unicode_from_codepage (&usz_len, &usv, sv, CP_ACP);
  mc_add_keyword (usz, rid, grp, nv, usv);
}
