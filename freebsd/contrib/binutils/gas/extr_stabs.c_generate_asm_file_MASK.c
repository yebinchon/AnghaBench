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

/* Variables and functions */
 char* FAKE_LABEL_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 char* FUNC8 (int) ; 
 char* FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10 (int type, char *file)
{
  static char *last_file;
  static int label_count;
  char *hold;
  char sym[30];
  char *buf;
  char *tmp = file;
  char *endp = file + FUNC6 (file);
  char *bufp;

  if (last_file != NULL
      && FUNC5 (last_file, file) == 0)
    return;

  /* Rather than try to do this in some efficient fashion, we just
     generate a string and then parse it again.  That lets us use the
     existing stabs hook, which expect to see a string, rather than
     inventing new ones.  */
  hold = input_line_pointer;

  FUNC3 (sym, "%sF%d", FAKE_LABEL_NAME, label_count);
  ++label_count;

  /* Allocate enough space for the file name (possibly extended with
     doubled up backslashes), the symbol name, and the other characters
     that make up a stabs file directive.  */
  bufp = buf = FUNC8 (2 * FUNC6 (file) + FUNC6 (sym) + 12);

  *bufp++ = '"';

  while (tmp < endp)
    {
      char *bslash = FUNC4 (tmp, '\\');
      size_t len = (bslash) ? (size_t) (bslash - tmp + 1) : FUNC6 (tmp);

      /* Double all backslashes, since demand_copy_C_string (used by
	 s_stab to extract the part in quotes) will try to replace them as
	 escape sequences.  backslash may appear in a filespec.  */
      FUNC7 (bufp, tmp, len);

      tmp += len;
      bufp += len;

      if (bslash != NULL)
	*bufp++ = '\\';
    }

  FUNC3 (bufp, "\",%d,0,0,%s\n", type, sym);

  input_line_pointer = buf;
  FUNC2 ('s');
  FUNC0 (sym);

  if (last_file != NULL)
    FUNC1 (last_file);
  last_file = FUNC9 (file);

  FUNC1 (buf);

  input_line_pointer = hold;
}