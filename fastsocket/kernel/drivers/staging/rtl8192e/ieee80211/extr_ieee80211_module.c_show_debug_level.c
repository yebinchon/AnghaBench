
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int ieee80211_debug_level ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int show_debug_level(char *page, char **start, off_t offset,
       int count, int *eof, void *data)
{
 return snprintf(page, count, "0x%08X\n", ieee80211_debug_level);
}
