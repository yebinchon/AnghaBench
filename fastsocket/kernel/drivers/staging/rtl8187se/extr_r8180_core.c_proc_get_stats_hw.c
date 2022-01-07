
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;



__attribute__((used)) static int proc_get_stats_hw(char *page, char **start,
     off_t offset, int count,
     int *eof, void *data)
{
 int len = 0;

 *eof = 1;
 return len;
}
