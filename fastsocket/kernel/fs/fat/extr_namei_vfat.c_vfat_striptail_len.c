
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned int len; char* name; } ;



__attribute__((used)) static unsigned int vfat_striptail_len(struct qstr *qstr)
{
 unsigned int len = qstr->len;

 while (len && qstr->name[len - 1] == '.')
  len--;
 return len;
}
