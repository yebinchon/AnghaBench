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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 size_t FUNC4 (char const*) ; 
 char* FUNC5 (size_t) ; 

__attribute__((used)) static char const *
FUNC6 (char *name, bool is_dir, char const *other_name)
{
  if (FUNC3 (name, "-") == 0)
    FUNC1 ("cannot interactively merge standard input");
  if (! is_dir)
    return name;
  else
    {
      /* Yield NAME/BASE, where BASE is OTHER_NAME's basename.  */
      char const *base = FUNC0 (other_name);
      size_t namelen = FUNC4 (name), baselen = FUNC4 (base);
      bool insert_slash = *FUNC0 (name) && name[namelen - 1] != '/';
      char *r = FUNC5 (namelen + insert_slash + baselen + 1);
      FUNC2 (r, name, namelen);
      r[namelen] = '/';
      FUNC2 (r + namelen + insert_slash, base, baselen + 1);
      return r;
    }
}