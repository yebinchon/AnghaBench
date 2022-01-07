
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUSID_SIZE ;
 int MAX_BUSID ;
 scalar_t__** busid_table ;
 int busid_table_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strncmp (scalar_t__*,char const*,int ) ;

int match_busid(const char *busid)
{
 int i;

 spin_lock(&busid_table_lock);

 for (i = 0; i < MAX_BUSID; i++)
  if (busid_table[i][0])
   if (!strncmp(busid_table[i], busid, BUSID_SIZE)) {

    spin_unlock(&busid_table_lock);
    return 0;
   }

 spin_unlock(&busid_table_lock);

 return 1;
}
