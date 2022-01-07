
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;


 unsigned long MSEC2NSEC (unsigned long) ;
 int sscanf (char*,char*,unsigned long*,unsigned long*) ;

__attribute__((used)) static int
parse_delay(char *str, uint64_t *delay, uint64_t *nlanes)
{
 unsigned long scan_delay;
 unsigned long scan_nlanes;

 if (sscanf(str, "%lu:%lu", &scan_delay, &scan_nlanes) != 2)
  return (1);






 if (scan_delay == 0)
  return (1);







 *delay = MSEC2NSEC(scan_delay);
 *nlanes = scan_nlanes;

 return (0);
}
