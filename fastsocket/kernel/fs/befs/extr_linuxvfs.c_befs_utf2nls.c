
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ unicode_t ;
struct super_block {int dummy; } ;
struct nls_table {int (* uni2char ) (scalar_t__,char*,int) ;int charset; } ;
struct TYPE_2__ {struct nls_table* nls; } ;


 TYPE_1__* BEFS_SB (struct super_block*) ;
 int EILSEQ ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ MAX_WCHAR_T ;
 int befs_debug (struct super_block*,char*) ;
 int befs_error (struct super_block*,char*,...) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int stub1 (scalar_t__,char*,int) ;
 int utf8_to_utf32 (char const*,int,scalar_t__*) ;

__attribute__((used)) static int
befs_utf2nls(struct super_block *sb, const char *in,
      int in_len, char **out, int *out_len)
{
 struct nls_table *nls = BEFS_SB(sb)->nls;
 int i, o;
 unicode_t uni;
 int unilen, utflen;
 char *result;




 int maxlen = in_len + 1;

 befs_debug(sb, "---> utf2nls()");

 if (!nls) {
  befs_error(sb, "befs_utf2nls called with no NLS table loaded");
  return -EINVAL;
 }

 *out = result = kmalloc(maxlen, GFP_NOFS);
 if (!*out) {
  befs_error(sb, "befs_utf2nls() cannot allocate memory");
  *out_len = 0;
  return -ENOMEM;
 }

 for (i = o = 0; i < in_len; i += utflen, o += unilen) {


  utflen = utf8_to_utf32(&in[i], in_len - i, &uni);
  if (utflen < 0)
   goto conv_err;


  if (uni > MAX_WCHAR_T)
   goto conv_err;
  unilen = nls->uni2char(uni, &result[o], in_len - o);
  if (unilen < 0)
   goto conv_err;
 }
 result[o] = '\0';
 *out_len = o;

 befs_debug(sb, "<--- utf2nls()");

 return o;

      conv_err:
 befs_error(sb, "Name using character set %s contains a character that "
     "cannot be converted to unicode.", nls->charset);
 befs_debug(sb, "<--- utf2nls()");
 kfree(result);
 return -EILSEQ;
}
