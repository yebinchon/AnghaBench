
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts_config {int flags; } ;
struct ts_bm {unsigned int patlen; int * pattern; scalar_t__ good_shift; } ;
typedef int gfp_t ;


 scalar_t__ IS_ERR (struct ts_config*) ;
 int TS_IGNORECASE ;
 struct ts_config* alloc_ts_config (size_t,int ) ;
 int compute_prefix_tbl (struct ts_bm*,int) ;
 int memcpy (int *,void const*,unsigned int) ;
 int toupper (int ) ;
 struct ts_bm* ts_config_priv (struct ts_config*) ;

__attribute__((used)) static struct ts_config *bm_init(const void *pattern, unsigned int len,
     gfp_t gfp_mask, int flags)
{
 struct ts_config *conf;
 struct ts_bm *bm;
 int i;
 unsigned int prefix_tbl_len = len * sizeof(unsigned int);
 size_t priv_size = sizeof(*bm) + len + prefix_tbl_len;

 conf = alloc_ts_config(priv_size, gfp_mask);
 if (IS_ERR(conf))
  return conf;

 conf->flags = flags;
 bm = ts_config_priv(conf);
 bm->patlen = len;
 bm->pattern = (u8 *) bm->good_shift + prefix_tbl_len;
 if (flags & TS_IGNORECASE)
  for (i = 0; i < len; i++)
   bm->pattern[i] = toupper(((u8 *)pattern)[i]);
 else
  memcpy(bm->pattern, pattern, len);
 compute_prefix_tbl(bm, flags);

 return conf;
}
