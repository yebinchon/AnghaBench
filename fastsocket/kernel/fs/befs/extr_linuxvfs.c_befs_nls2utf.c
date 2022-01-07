
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct super_block {int dummy; } ;
struct nls_table {int (* char2uni ) (char const*,int,int *) ;int charset; } ;
struct TYPE_2__ {struct nls_table* nls; } ;


 TYPE_1__* BEFS_SB (struct super_block*) ;
 int EILSEQ ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int befs_debug (struct super_block*,char*) ;
 int befs_error (struct super_block*,char*,...) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int stub1 (char const*,int,int *) ;
 int utf32_to_utf8 (int ,char*,int) ;

__attribute__((used)) static int
befs_nls2utf(struct super_block *sb, const char *in,
      int in_len, char **out, int *out_len)
{
 struct nls_table *nls = BEFS_SB(sb)->nls;
 int i, o;
 wchar_t uni;
 int unilen, utflen;
 char *result;



 int maxlen = (3 * in_len) + 1;

 befs_debug(sb, "---> nls2utf()\n");

 if (!nls) {
  befs_error(sb, "befs_nls2utf called with no NLS table loaded.");
  return -EINVAL;
 }

 *out = result = kmalloc(maxlen, GFP_NOFS);
 if (!*out) {
  befs_error(sb, "befs_nls2utf() cannot allocate memory");
  *out_len = 0;
  return -ENOMEM;
 }

 for (i = o = 0; i < in_len; i += unilen, o += utflen) {


  unilen = nls->char2uni(&in[i], in_len - i, &uni);
  if (unilen < 0)
   goto conv_err;


  utflen = utf32_to_utf8(uni, &result[o], 3);
  if (utflen <= 0)
   goto conv_err;
 }

 result[o] = '\0';
 *out_len = o;

 befs_debug(sb, "<--- nls2utf()");

 return i;

      conv_err:
 befs_error(sb, "Name using charecter set %s contains a charecter that "
     "cannot be converted to unicode.", nls->charset);
 befs_debug(sb, "<--- nls2utf()");
 kfree(result);
 return -EILSEQ;
}
