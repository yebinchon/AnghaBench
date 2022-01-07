
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_sid {int num_subauth; int * sub_auth; int * authority; int revision; } ;


 int NUM_AUTHS ;
 int SID_MAX_SUB_AUTHORITIES ;
 int min_t (int ,int,int ) ;
 int u8 ;

__attribute__((used)) static void
cifs_copy_sid(struct cifs_sid *dst, const struct cifs_sid *src)
{
 int i;

 dst->revision = src->revision;
 dst->num_subauth = min_t(u8, src->num_subauth, SID_MAX_SUB_AUTHORITIES);
 for (i = 0; i < NUM_AUTHS; ++i)
  dst->authority[i] = src->authority[i];
 for (i = 0; i < dst->num_subauth; ++i)
  dst->sub_auth[i] = src->sub_auth[i];
}
