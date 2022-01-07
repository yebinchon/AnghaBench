
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int s8 ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t cxacru_sysfs_showattr_s8(s8 value, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n", value);
}
