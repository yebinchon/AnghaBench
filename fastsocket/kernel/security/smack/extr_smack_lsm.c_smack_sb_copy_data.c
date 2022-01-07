
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SMK_FSDEFAULT ;
 int SMK_FSFLOOR ;
 int SMK_FSHAT ;
 int SMK_FSROOT ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 char* strstr (char*,int ) ;

__attribute__((used)) static int smack_sb_copy_data(char *orig, char *smackopts)
{
 char *cp, *commap, *otheropts, *dp;

 otheropts = (char *)get_zeroed_page(GFP_KERNEL);
 if (otheropts == ((void*)0))
  return -ENOMEM;

 for (cp = orig, commap = orig; commap != ((void*)0); cp = commap + 1) {
  if (strstr(cp, SMK_FSDEFAULT) == cp)
   dp = smackopts;
  else if (strstr(cp, SMK_FSFLOOR) == cp)
   dp = smackopts;
  else if (strstr(cp, SMK_FSHAT) == cp)
   dp = smackopts;
  else if (strstr(cp, SMK_FSROOT) == cp)
   dp = smackopts;
  else
   dp = otheropts;

  commap = strchr(cp, ',');
  if (commap != ((void*)0))
   *commap = '\0';

  if (*dp != '\0')
   strcat(dp, ",");
  strcat(dp, cp);
 }

 strcpy(orig, otheropts);
 free_page((unsigned long)otheropts);

 return 0;
}
