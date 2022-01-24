#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* de_next; } ;
typedef  TYPE_1__ dict_ent ;
struct TYPE_9__ {TYPE_1__** de; } ;
typedef  TYPE_2__ dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 size_t FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,char*) ; 
 TYPE_1__* FUNC3 (char*) ; 

void
FUNC4(dict *dp, char *k, char *v)
{
  dict_ent *de = FUNC2(dp, k);

  if (!de) {
    dict_ent **dep = &dp->de[FUNC1(k)];
    de = FUNC3(k);
    de->de_next = *dep;
    *dep = de;
  }
  FUNC0(de, v);
}