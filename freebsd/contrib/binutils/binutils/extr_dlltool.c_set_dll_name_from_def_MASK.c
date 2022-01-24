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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  def_file ; 
 int /*<<< orphan*/  dll_name ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4 (const char * name)
{
  const char* image_basename = FUNC1 (name);
  if (image_basename != name)
    FUNC2 (FUNC0("%s: Path components stripped from image name, '%s'."),
	      def_file, name);
  dll_name = FUNC3 (image_basename);
}