
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUSID_SIZE ;
 int MAX_BUSID ;
 int ** busid_table ;
 int busid_table_lock ;
 int match_busid (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strncpy (int *,char*,int ) ;

__attribute__((used)) static int add_match_busid(char *busid)
{
 int i;

 if (!match_busid(busid))
  return 0;

 spin_lock(&busid_table_lock);

 for (i = 0; i < MAX_BUSID; i++)
  if (!busid_table[i][0]) {
   strncpy(busid_table[i], busid, BUSID_SIZE);
   spin_unlock(&busid_table_lock);
   return 0;
  }

 spin_unlock(&busid_table_lock);

 return -1;
}
