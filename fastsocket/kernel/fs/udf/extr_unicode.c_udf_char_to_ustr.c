
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ustr {int u_cmpID; int u_len; int u_name; } ;


 int UDF_NAME_LEN ;
 int memcpy (int ,int const*,int) ;
 int memset (struct ustr*,int ,int) ;

__attribute__((used)) static int udf_char_to_ustr(struct ustr *dest, const uint8_t *src, int strlen)
{
 if ((!dest) || (!src) || (!strlen) || (strlen > UDF_NAME_LEN - 2))
  return 0;

 memset(dest, 0, sizeof(struct ustr));
 memcpy(dest->u_name, src, strlen);
 dest->u_cmpID = 0x08;
 dest->u_len = strlen;

 return strlen;
}
