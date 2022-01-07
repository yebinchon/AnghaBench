
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int basename (char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,int ,int) ;

void
zfs_save_arguments(int argc, char **argv, char *string, int len)
{
 (void) strlcpy(string, basename(argv[0]), len);
 for (int i = 1; i < argc; i++) {
  (void) strlcat(string, " ", len);
  (void) strlcat(string, argv[i], len);
 }
}
