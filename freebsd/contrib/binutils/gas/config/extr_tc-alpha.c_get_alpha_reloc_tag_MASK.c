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
struct alpha_reloc_tag {long sequence; int /*<<< orphan*/  string; int /*<<< orphan*/  segment; } ;

/* Variables and functions */
 int ALPHA_RELOC_DIGITS ; 
 int /*<<< orphan*/  alpha_literal_hash ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  now_seg ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC5 (char*) ; 
 struct alpha_reloc_tag* FUNC6 (int,int) ; 

__attribute__((used)) static struct alpha_reloc_tag *
FUNC7 (long sequence)
{
  char buffer[ALPHA_RELOC_DIGITS];
  struct alpha_reloc_tag *info;

  FUNC3 (buffer, "!%ld", sequence);

  info = (struct alpha_reloc_tag *) FUNC1 (alpha_literal_hash, buffer);
  if (! info)
    {
      size_t len = FUNC5 (buffer);
      const char *errmsg;

      info = FUNC6 (sizeof (struct alpha_reloc_tag) + len, 1);

      info->segment = now_seg;
      info->sequence = sequence;
      FUNC4 (info->string, buffer);
      errmsg = FUNC2 (alpha_literal_hash, info->string, (void *) info);
      if (errmsg)
	FUNC0 (errmsg);
    }

  return info;
}