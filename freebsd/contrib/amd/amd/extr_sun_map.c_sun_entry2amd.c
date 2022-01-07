
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun_entry {int * fstype; int * mountpt_list; int * opt_list; } ;
typedef int line_buff ;


 int INFO_MAX_LINE_LEN ;
 scalar_t__ NSTREQ (int *,char*,int) ;
 char* SUN_AUTOFS_TYPE ;
 char* SUN_CACHEFS_TYPE ;
 char* SUN_HSFS_TYPE ;
 char* SUN_NFS_TYPE ;
 int XFREE (struct sun_entry*) ;
 int XLOG_ERROR ;
 int XLOG_INFO ;
 scalar_t__ isspace (unsigned char) ;
 int memset (char*,int ,int) ;
 int plog (int ,char*,...) ;
 int strlen (char*) ;
 int sun_hsfs2amd (char*,int,char const*,struct sun_entry*) ;
 struct sun_entry* sun_map_parse_read (char*) ;
 int sun_multi2amd (char*,int,char const*,struct sun_entry*) ;
 int sun_nfs2amd (char*,int,char const*,struct sun_entry*) ;
 int sun_opts2amd (char*,int,char const*,int *) ;
 char* xstrdup (char*) ;
 int xstrlcpy (char*,char const*,int) ;

char *
sun_entry2amd(const char *key, const char *s_entry_str)
{
  char *retval = ((void*)0);
  char line_buff[INFO_MAX_LINE_LEN];
  int ws;
  struct sun_entry *s_entry = ((void*)0);


  if (key == ((void*)0)) {
    plog(XLOG_ERROR,"Sun key value was null");
    goto err;
  }

  if (s_entry_str == ((void*)0)) {
    plog(XLOG_ERROR,"Sun entry value was null");
    goto err;
  }


  xstrlcpy(line_buff, s_entry_str, sizeof(line_buff));
  ws = strlen(line_buff) - 1;
  while (ws >= 0 && (isspace((unsigned char)line_buff[ws]) || line_buff[ws] == '\n')) {
    line_buff[ws--] = '\0';
  }


  s_entry = sun_map_parse_read(line_buff);
  if (s_entry == ((void*)0)) {
    plog(XLOG_ERROR,"could not parse Sun style map");
    goto err;
  }

  memset(line_buff, 0, sizeof(line_buff));

  if (s_entry->opt_list != ((void*)0)) {

    sun_opts2amd(line_buff, sizeof(line_buff), key, s_entry->opt_list);
  }


  if (s_entry->mountpt_list != ((void*)0)) {

    sun_multi2amd(line_buff, sizeof(line_buff), key, s_entry);
    retval = xstrdup(line_buff);
  }
  else {

    if (s_entry->fstype != ((void*)0)) {
      if (NSTREQ(s_entry->fstype, SUN_NFS_TYPE, strlen(SUN_NFS_TYPE))) {

 sun_nfs2amd(line_buff, sizeof(line_buff), key, s_entry);
 retval = xstrdup(line_buff);
      }
      else if (NSTREQ(s_entry->fstype, SUN_HSFS_TYPE, strlen(SUN_HSFS_TYPE))) {

 sun_hsfs2amd(line_buff, sizeof(line_buff), key, s_entry);
 retval = xstrdup(line_buff);
      }



      else if (NSTREQ(s_entry->fstype, SUN_AUTOFS_TYPE, strlen(SUN_AUTOFS_TYPE))) {

 plog(XLOG_ERROR, "Sun fstype %s is currently not supported by Amd.",
      s_entry->fstype);
 goto err;

      }
      else if (NSTREQ(s_entry->fstype, SUN_CACHEFS_TYPE, strlen(SUN_CACHEFS_TYPE))) {

 plog(XLOG_ERROR, "Sun fstype %s is currently not supported by Amd.",
      s_entry->fstype);
 goto err;
      }
      else {
 plog(XLOG_ERROR, "Sun fstype %s is currently not supported by Amd.",
      s_entry->fstype);
 goto err;
      }
    }
    else {
      plog(XLOG_INFO, "No SUN fstype specified defaulting to NFS.");
      sun_nfs2amd(line_buff, sizeof(line_buff), key, s_entry);
      retval = xstrdup(line_buff);
    }
  }

 err:
  XFREE(s_entry);
  return retval;
}
