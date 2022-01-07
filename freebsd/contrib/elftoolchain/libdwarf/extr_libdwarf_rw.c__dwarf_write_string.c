
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

void
_dwarf_write_string(void *data, uint64_t *offsetp, char *string)
{
 char *dst;

 dst = (char *) data + *offsetp;
 strcpy(dst, string);
 (*offsetp) += strlen(string) + 1;
}
