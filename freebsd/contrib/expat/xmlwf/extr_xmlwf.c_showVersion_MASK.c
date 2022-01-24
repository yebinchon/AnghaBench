#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ feature; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ XML_Feature ;
typedef  char XML_Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ XML_FEATURE_END ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(XML_Char *prog)
{
  XML_Char *s = prog;
  XML_Char ch;
  const XML_Feature *features = FUNC2();
  while ((ch = *s) != 0) {
    if (ch == '/'
#if defined(_WIN32)
        || ch == '\\'
#endif
        )
      prog = s + 1;
    ++s;
  }
  FUNC3(stdout, FUNC0("%s using %s\n"), prog, FUNC1());
  if (features != NULL && features[0].feature != XML_FEATURE_END) {
    int i = 1;
    FUNC3(stdout, FUNC0("%s"), features[0].name);
    if (features[0].value)
      FUNC3(stdout, FUNC0("=%ld"), features[0].value);
    while (features[i].feature != XML_FEATURE_END) {
      FUNC3(stdout, FUNC0(", %s"), features[i].name);
      if (features[i].value)
        FUNC3(stdout, FUNC0("=%ld"), features[i].value);
      ++i;
    }
    FUNC3(stdout, FUNC0("\n"));
  }
}