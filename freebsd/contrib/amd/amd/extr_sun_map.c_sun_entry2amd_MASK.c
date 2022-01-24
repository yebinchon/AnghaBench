#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sun_entry {int /*<<< orphan*/ * fstype; int /*<<< orphan*/ * mountpt_list; int /*<<< orphan*/ * opt_list; } ;
typedef  int /*<<< orphan*/  line_buff ;

/* Variables and functions */
 int INFO_MAX_LINE_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* SUN_AUTOFS_TYPE ; 
 char* SUN_CACHEFS_TYPE ; 
 char* SUN_HSFS_TYPE ; 
 char* SUN_NFS_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct sun_entry*) ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*,struct sun_entry*) ; 
 struct sun_entry* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char const*,struct sun_entry*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char const*,struct sun_entry*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 

char *
FUNC13(const char *key, const char *s_entry_str)
{
  char *retval = NULL;
  char line_buff[INFO_MAX_LINE_LEN];
  int ws;
  struct sun_entry *s_entry = NULL;

  /* The key should not be NULL. */
  if (key == NULL) {
    FUNC4(XLOG_ERROR,"Sun key value was null");
    goto err;
  }
  /* The Sun entry string should never be NULL. */
  if (s_entry_str == NULL) {
    FUNC4(XLOG_ERROR,"Sun entry value was null");
    goto err;
  }

  /* Make sure there are no trailing white spaces or '\n'. */
  FUNC12(line_buff, s_entry_str, sizeof(line_buff));
  ws = FUNC5(line_buff) - 1;
  while (ws >= 0 && (FUNC2((unsigned char)line_buff[ws]) || line_buff[ws] == '\n')) {
    line_buff[ws--] = '\0';
  }

  /* Parse the sun entry line. */
  s_entry = FUNC7(line_buff);
  if (s_entry == NULL) {
    FUNC4(XLOG_ERROR,"could not parse Sun style map");
    goto err;
  }

  FUNC3(line_buff, 0, sizeof(line_buff));

  if (s_entry->opt_list != NULL) {
    /* write the mount options to the buffer  */
    FUNC10(line_buff, sizeof(line_buff), key, s_entry->opt_list);
  }

  /* Check if this is a multi-mount entry. */
  if (s_entry->mountpt_list != NULL) {
    /* multi-mount point */
    FUNC8(line_buff, sizeof(line_buff), key, s_entry);
    retval = FUNC11(line_buff);
  }
  else {
    /* single mount point */
    if (s_entry->fstype != NULL) {
      if (FUNC0(s_entry->fstype, SUN_NFS_TYPE, FUNC5(SUN_NFS_TYPE))) {
	/* NFS Type */
	FUNC9(line_buff, sizeof(line_buff), key, s_entry);
	retval = FUNC11(line_buff);
      }
      else if (FUNC0(s_entry->fstype, SUN_HSFS_TYPE, FUNC5(SUN_HSFS_TYPE))) {
	/* HSFS Type (CD fs) */
	FUNC6(line_buff, sizeof(line_buff), key, s_entry);
	retval = FUNC11(line_buff);
      }
      /*
       * XXX: The following fstypes are not yet supported.
       */
      else if (FUNC0(s_entry->fstype, SUN_AUTOFS_TYPE, FUNC5(SUN_AUTOFS_TYPE))) {
	/* AutoFS Type */
	FUNC4(XLOG_ERROR, "Sun fstype %s is currently not supported by Amd.",
	     s_entry->fstype);
	goto err;

      }
      else if (FUNC0(s_entry->fstype, SUN_CACHEFS_TYPE, FUNC5(SUN_CACHEFS_TYPE))) {
	/* CacheFS Type */
	FUNC4(XLOG_ERROR, "Sun fstype %s is currently not supported by Amd.",
	     s_entry->fstype);
	goto err;
      }
      else {
	FUNC4(XLOG_ERROR, "Sun fstype %s is currently not supported by Amd.",
	     s_entry->fstype);
	goto err;
      }
    }
    else {
      FUNC4(XLOG_INFO, "No SUN fstype specified defaulting to NFS.");
      FUNC9(line_buff, sizeof(line_buff), key, s_entry);
      retval = FUNC11(line_buff);
    }
  }

 err:
  FUNC1(s_entry);
  return retval;
}