
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void unicode_to_ascii(char *string, int buflen,
     __le16 *unicode, int unicode_size)
{
 int i;

 if (buflen <= 0)
  return;
 --buflen;

 for (i = 0; i < unicode_size; i++) {
  if (i >= buflen)
   break;
  string[i] = (char)(le16_to_cpu(unicode[i]));
 }
 string[i] = 0x00;
}
