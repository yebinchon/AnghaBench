
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MNTTAB_TYPE_AUTOFS ;
 char* MNTTAB_TYPE_CACHEFS ;
 char* MNTTAB_TYPE_CDFS ;
 char* MNTTAB_TYPE_CFS ;
 char* MNTTAB_TYPE_EFS ;
 char* MNTTAB_TYPE_LOFS ;
 char* MNTTAB_TYPE_MFS ;
 char* MNTTAB_TYPE_NFS ;
 char* MNTTAB_TYPE_NULLFS ;
 char* MNTTAB_TYPE_PCFS ;
 char* MNTTAB_TYPE_TFS ;
 char* MNTTAB_TYPE_TMPFS ;
 char* MNTTAB_TYPE_UFS ;
 char* MNTTAB_TYPE_UMAPFS ;
 char* MNTTAB_TYPE_UNIONFS ;
 char* MNTTAB_TYPE_XFS ;
 int ops_show1 (char*,size_t,int*,char*) ;
 int strlen (char*) ;
 int xstrlcat (char*,char*,size_t) ;

void
ops_showfstypes(char *buf, size_t l)
{
  int linesize = 0;

  buf[0] = '\0';
  if (buf[strlen(buf)-1] == '\n')
    buf[strlen(buf) - 4] = '\0';
  else
    buf[strlen(buf) - 2] = '\0';
  xstrlcat(buf, ".\n", l);
}
