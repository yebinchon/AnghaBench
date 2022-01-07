
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int MAX_BUSID ;
 char** busid_table ;
 int busid_table_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_match_busid(struct device_driver *drv, char *buf)
{
 int i;
 char *out = buf;

 spin_lock(&busid_table_lock);

 for (i = 0; i < MAX_BUSID; i++)
  if (busid_table[i][0])
   out += sprintf(out, "%s ", busid_table[i]);

 spin_unlock(&busid_table_lock);

 out += sprintf(out, "\n");

 return out - buf;
}
