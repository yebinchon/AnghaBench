
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int (* uni2char ) (int const,char*,int ) ;} ;
typedef int __u16 ;


 int NLS_MAX_CHARSET_SIZE ;






 int stub1 (int const,char*,int ) ;

__attribute__((used)) static int
cifs_mapchar(char *target, const __u16 src_char, const struct nls_table *cp,
      bool mapchar)
{
 int len = 1;

 if (!mapchar)
  goto cp_convert;






 switch (src_char) {
 case 132:
  *target = ':';
  break;
 case 133:
  *target = '*';
  break;
 case 128:
  *target = '?';
  break;
 case 129:
  *target = '|';
  break;
 case 131:
  *target = '>';
  break;
 case 130:
  *target = '<';
  break;
 default:
  goto cp_convert;
 }

out:
 return len;

cp_convert:
 len = cp->uni2char(src_char, target, NLS_MAX_CHARSET_SIZE);
 if (len <= 0) {
  *target = '?';
  len = 1;
 }
 goto out;
}
