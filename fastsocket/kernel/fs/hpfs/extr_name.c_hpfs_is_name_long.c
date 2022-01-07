
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ no_dos_char (unsigned char) ;

int hpfs_is_name_long(unsigned char *name, unsigned len)
{
 int i,j;
 for (i = 0; i < len && name[i] != '.'; i++)
  if (no_dos_char(name[i])) return 1;
 if (!i || i > 8) return 1;
 if (i == len) return 0;
 for (j = i + 1; j < len; j++)
  if (name[j] == '.' || no_dos_char(name[i])) return 1;
 return j - i > 4;
}
