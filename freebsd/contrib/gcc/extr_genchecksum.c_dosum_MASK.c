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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned char,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (const char *file)
{
  FILE *f;
  unsigned char result[16];
  int i;
  
  f = FUNC2 (file, "rb");
  if (!f)
    {
      FUNC3 (stderr, "opening %s: %s\n", file, FUNC8 (errno));
      FUNC0 (1);
    }
  
  /* Some executable formats have timestamps in the first 16 bytes, yuck.  */
  if (FUNC5 (f, 16, SEEK_SET) != 0)
     {
      FUNC3 (stderr, "seeking in %s: %s\n", file, FUNC8 (errno));
      FUNC0 (1);
    }
  
  if (FUNC6 (f, result) != 0
      || FUNC1 (f) != 0)
     {
      FUNC3 (stderr, "reading %s: %s\n", file, FUNC8 (errno));
      FUNC0 (1);
    }

  FUNC4 ("const unsigned char executable_checksum[16] = { ", stdout);
  for (i = 0; i < 16; i++)
    FUNC7 ("%#02x%s", result[i], i == 15 ? " };\n" : ", ");
}