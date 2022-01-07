
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {char* smk_known; } ;


 struct smack_known* smk_import_entry (char const*,int) ;

char *smk_import(const char *string, int len)
{
 struct smack_known *skp;


 if (string[0] == '-')
  return ((void*)0);
 skp = smk_import_entry(string, len);
 if (skp == ((void*)0))
  return ((void*)0);
 return skp->smk_known;
}
