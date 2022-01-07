
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ZPROP_CONT ;
 int fprintf (int *,char*,...) ;
 scalar_t__ zfs_prop_inheritable (int) ;
 scalar_t__ zfs_prop_readonly (int) ;
 char* zfs_prop_to_name (int) ;
 char* zfs_prop_values (int) ;

__attribute__((used)) static int
usage_prop_cb(int prop, void *cb)
{
 FILE *fp = cb;

 (void) fprintf(fp, "\t%-15s ", zfs_prop_to_name(prop));

 if (zfs_prop_readonly(prop))
  (void) fprintf(fp, " NO    ");
 else
  (void) fprintf(fp, "YES    ");

 if (zfs_prop_inheritable(prop))
  (void) fprintf(fp, "  YES   ");
 else
  (void) fprintf(fp, "   NO   ");

 if (zfs_prop_values(prop) == ((void*)0))
  (void) fprintf(fp, "-\n");
 else
  (void) fprintf(fp, "%s\n", zfs_prop_values(prop));

 return (ZPROP_CONT);
}
