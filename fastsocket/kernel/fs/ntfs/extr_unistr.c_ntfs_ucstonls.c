
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nls_table {int (* uni2char ) (int ,unsigned char*,int) ;int charset; } ;
typedef int ntfschar ;
struct TYPE_3__ {int sb; struct nls_table* nls_map; } ;
typedef TYPE_1__ ntfs_volume ;


 int EILSEQ ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 int GFP_NOFS ;
 int const NLS_MAX_CHARSET_SIZE ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int le16_to_cpu (int const) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int ntfs_error (int ,char*,...) ;
 int stub1 (int ,unsigned char*,int) ;

int ntfs_ucstonls(const ntfs_volume *vol, const ntfschar *ins,
  const int ins_len, unsigned char **outs, int outs_len)
{
 struct nls_table *nls = vol->nls_map;
 unsigned char *ns;
 int i, o, ns_len, wc;


 if (ins) {
  ns = *outs;
  ns_len = outs_len;
  if (ns && !ns_len) {
   wc = -ENAMETOOLONG;
   goto conversion_err;
  }
  if (!ns) {
   ns_len = ins_len * NLS_MAX_CHARSET_SIZE;
   ns = kmalloc(ns_len + 1, GFP_NOFS);
   if (!ns)
    goto mem_err_out;
  }
  for (i = o = 0; i < ins_len; i++) {
retry: wc = nls->uni2char(le16_to_cpu(ins[i]), ns + o,
     ns_len - o);
   if (wc > 0) {
    o += wc;
    continue;
   } else if (!wc)
    break;
   else if (wc == -ENAMETOOLONG && ns != *outs) {
    unsigned char *tc;

    tc = kmalloc((ns_len + 64) &
      ~63, GFP_NOFS);
    if (tc) {
     memcpy(tc, ns, ns_len);
     ns_len = ((ns_len + 64) & ~63) - 1;
     kfree(ns);
     ns = tc;
     goto retry;
    }
   }
   goto conversion_err;
  }
  ns[o] = 0;
  *outs = ns;
  return o;
 }
 ntfs_error(vol->sb, "Received NULL pointer.");
 return -EINVAL;
conversion_err:
 ntfs_error(vol->sb, "Unicode name contains characters that cannot be "
   "converted to character set %s.  You might want to "
   "try to use the mount option nls=utf8.", nls->charset);
 if (ns != *outs)
  kfree(ns);
 if (wc != -ENAMETOOLONG)
  wc = -EILSEQ;
 return wc;
mem_err_out:
 ntfs_error(vol->sb, "Failed to allocate name!");
 return -ENOMEM;
}
