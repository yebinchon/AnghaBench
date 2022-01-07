
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static inline int write_char(unsigned char ch, char *output, int olen)
{
 if (olen < 4)
  return -ENAMETOOLONG;
 sprintf(output, ":x%02x", ch);
 return 4;
}
