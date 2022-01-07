
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ustr {int u_len; int u_name; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int s_nls_map; } ;


 int GFP_NOFS ;
 int UDF_FLAG_NLS_MAP ;
 int UDF_FLAG_UTF8 ;
 scalar_t__ UDF_QUERY_FLAG (struct super_block*,int ) ;
 TYPE_1__* UDF_SB (struct super_block*) ;
 int kfree (struct ustr*) ;
 struct ustr* kmalloc (int,int ) ;
 int udf_CS0toNLS (int ,struct ustr*,struct ustr*) ;
 int udf_CS0toUTF8 (struct ustr*,struct ustr*) ;
 scalar_t__ udf_build_ustr_exact (struct ustr*,int *,int) ;
 int udf_debug (char*,int *) ;
 int udf_translate_to_linux (int *,int ,int ,int ,int ) ;

int udf_get_filename(struct super_block *sb, uint8_t *sname, uint8_t *dname,
       int flen)
{
 struct ustr *filename, *unifilename;
 int len = 0;

 filename = kmalloc(sizeof(struct ustr), GFP_NOFS);
 if (!filename)
  return 0;

 unifilename = kmalloc(sizeof(struct ustr), GFP_NOFS);
 if (!unifilename)
  goto out1;

 if (udf_build_ustr_exact(unifilename, sname, flen))
  goto out2;

 if (UDF_QUERY_FLAG(sb, UDF_FLAG_UTF8)) {
  if (!udf_CS0toUTF8(filename, unifilename)) {
   udf_debug("Failed in udf_get_filename: sname = %s\n",
      sname);
   goto out2;
  }
 } else if (UDF_QUERY_FLAG(sb, UDF_FLAG_NLS_MAP)) {
  if (!udf_CS0toNLS(UDF_SB(sb)->s_nls_map, filename,
      unifilename)) {
   udf_debug("Failed in udf_get_filename: sname = %s\n",
      sname);
   goto out2;
  }
 } else
  goto out2;

 len = udf_translate_to_linux(dname, filename->u_name, filename->u_len,
         unifilename->u_name, unifilename->u_len);
out2:
 kfree(unifilename);
out1:
 kfree(filename);
 return len;
}
