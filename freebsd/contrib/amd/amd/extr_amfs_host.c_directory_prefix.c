
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int NSTREQ (char*,char*,int) ;
 int TRUE ;
 int strlen (char*) ;

__attribute__((used)) static int
directory_prefix(char *pref, char *dir)
{
  int len = strlen(pref);

  if (!NSTREQ(pref, dir, len))
    return FALSE;
  if (dir[len] == '/' || dir[len] == '\0')
    return TRUE;
  return FALSE;
}
