
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;


 int* nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;

__attribute__((used)) static bool is_valid_ie_attr(const struct nlattr *attr)
{
 const u8 *pos;
 int len;

 if (!attr)
  return 1;

 pos = nla_data(attr);
 len = nla_len(attr);

 while (len) {
  u8 elemlen;

  if (len < 2)
   return 0;
  len -= 2;

  elemlen = pos[1];
  if (elemlen > len)
   return 0;

  len -= elemlen;
  pos += 2 + elemlen;
 }

 return 1;
}
