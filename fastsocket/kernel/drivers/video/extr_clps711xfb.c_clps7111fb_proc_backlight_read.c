
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int EDB_PD3_LCDBL ;
 int EINVAL ;
 int PDDR ;
 int clps_readb (int ) ;
 scalar_t__ machine_is_edb7211 () ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
clps7111fb_proc_backlight_read(char *page, char **start, off_t off,
  int count, int *eof, void *data)
{


 if (count < 2)
  return -EINVAL;

 if (machine_is_edb7211()) {
  return sprintf(page, "%d\n",
    (clps_readb(PDDR) & EDB_PD3_LCDBL) ? 1 : 0);
 }

 return 0;
}
