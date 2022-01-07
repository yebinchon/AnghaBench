
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;



__attribute__((used)) static unsigned name_to_int(struct dentry *dentry)
{
 const char *name = dentry->d_name.name;
 int len = dentry->d_name.len;
 unsigned n = 0;

 if (len > 1 && *name == '0')
  goto out;
 while (len-- > 0) {
  unsigned c = *name++ - '0';
  if (c > 9)
   goto out;
  if (n >= (~0U-9)/10)
   goto out;
  n *= 10;
  n += c;
 }
 return n;
out:
 return ~0U;
}
