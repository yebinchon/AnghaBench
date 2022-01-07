
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isprint (char) ;
 int printf (char*,char) ;

__attribute__((used)) static int
zil_prt_rec_write_cb(void *data, size_t len, void *unused)
{
 char *cdata = data;
 for (size_t i = 0; i < len; i++) {
  if (isprint(*cdata))
   (void) printf("%c ", *cdata);
  else
   (void) printf("%2X", *cdata);
  cdata++;
 }
 return (0);
}
