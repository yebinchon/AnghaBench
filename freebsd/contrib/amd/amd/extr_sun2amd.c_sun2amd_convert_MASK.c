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
typedef  int /*<<< orphan*/  line_buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int INFO_MAX_LINE_LEN ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8(FILE *sun_in, FILE *amd_out)
{
  char line_buff[INFO_MAX_LINE_LEN], *tmp, *key, *entry;
  int pos, line = 0, retval = 1;

  /* just to be safe */
  FUNC3(line_buff, 0, sizeof(line_buff));

  /* Read the input line by line and do the conversion. */
  while ((pos = FUNC0(line_buff, sizeof(line_buff), sun_in))) {
    line++;
    line_buff[pos - 1] = '\0';

    /* remove comments */
    if ((tmp = FUNC5(line_buff, '#')) != NULL) {
      *tmp = '\0';
    }

    /* find start of key */
    key = line_buff;
    while (*key != '\0' && FUNC2((unsigned char)*key)) {
      key++;
    }

    /* ignore blank lines */
    if (*key == '\0') {
      continue;
    }

    /* find the end of the key and NULL terminate */
    tmp = key;
    while (*tmp != '\0' && FUNC2((unsigned char)*tmp) == 0) {
      tmp++;
    }
    if (*tmp == '\0') {
      FUNC4(XLOG_ERROR, "map line %d has no entry", line);
      goto err;
    }
    *tmp++ = '\0';
    if (*tmp == '\0') {
      FUNC4(XLOG_ERROR, "map line %d has no entry", line);
      goto err;
    }
    entry = tmp;

    /* convert the sun entry to an amd entry */
    if ((tmp = FUNC7(key, entry)) == NULL) {
      FUNC4(XLOG_ERROR, "parse error on line %d", line);
      goto err;
    }

    if (FUNC1(amd_out, "%s %s\n", key, tmp) < 0) {
      FUNC4(XLOG_ERROR, "can't write to output stream: %s", FUNC6(errno));
      goto err;
    }

    /* just to be safe */
    FUNC3(line_buff, 0, sizeof(line_buff));
  }

  /* success */
  retval = 0;

 err:
  return retval;
}