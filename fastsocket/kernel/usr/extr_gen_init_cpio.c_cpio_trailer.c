
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int offset ;
 int push_hdr (char*) ;
 int push_rest (char const*) ;
 int putchar (int ) ;
 int sprintf (char*,char*,char*,int ,int ,long,long,int,long,int ,int ,int ,int ,int ,unsigned int,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void cpio_trailer(void)
{
 char s[256];
 const char name[] = "TRAILER!!!";

 sprintf(s, "%s%08X%08X%08lX%08lX%08X%08lX"
        "%08X%08X%08X%08X%08X%08X%08X",
  "070701",
  0,
  0,
  (long) 0,
  (long) 0,
  1,
  (long) 0,
  0,
  0,
  0,
  0,
  0,
  (unsigned)strlen(name)+1,
  0);
 push_hdr(s);
 push_rest(name);

 while (offset % 512) {
  putchar(0);
  offset++;
 }
}
