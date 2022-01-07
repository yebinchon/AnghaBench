
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {scalar_t__ length; scalar_t__ value; } ;
typedef scalar_t__ off_t ;


 int memcpy (char*,char*,int) ;

__attribute__((used)) static int property_read_proc(char *page, char **start, off_t off,
         int count, int *eof, void *data)
{
 struct property *pp = data;
 int n;

 if (off >= pp->length) {
  *eof = 1;
  return 0;
 }
 n = pp->length - off;
 if (n > count)
  n = count;
 else
  *eof = 1;
 memcpy(page, (char *)pp->value + off, n);
 *start = page;
 return n;
}
