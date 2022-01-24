#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct minimal_symbol {int dummy; } ;
struct TYPE_2__ {char* name; scalar_t__ begin; scalar_t__ end; } ;

/* Variables and functions */
 void* FUNC0 (struct minimal_symbol*) ; 
 struct minimal_symbol* FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* methcalls ; 
 unsigned int nmethcalls ; 

__attribute__((used)) static void 
FUNC2 (void)
{
  unsigned int i;
  for (i = 0; i < nmethcalls; i++) {

    struct minimal_symbol *func;

    /* Try both with and without underscore.  */
    func = FUNC1 (methcalls[i].name, NULL, NULL);
    if ((func == NULL) && (methcalls[i].name[0] == '_')) {
      func = FUNC1 (methcalls[i].name + 1, NULL, NULL);
    }
    if (func == NULL) { 
      methcalls[i].begin = 0;
      methcalls[i].end = 0;
      continue; 
    }
    
    methcalls[i].begin = FUNC0 (func);
    do {
      methcalls[i].end = FUNC0 (++func);
    } while (methcalls[i].begin == methcalls[i].end);
  }
}