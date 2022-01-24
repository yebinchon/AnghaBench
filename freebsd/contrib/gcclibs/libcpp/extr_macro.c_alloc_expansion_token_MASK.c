#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cpp_token ;
struct TYPE_6__ {int /*<<< orphan*/  a_buff; } ;
typedef  TYPE_1__ cpp_reader ;
struct TYPE_7__ {int count; } ;
typedef  TYPE_2__ cpp_macro ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static cpp_token *
FUNC3 (cpp_reader *pfile, cpp_macro *macro)
{
  if (FUNC1 (pfile->a_buff) < (macro->count + 1) * sizeof (cpp_token))
    FUNC2 (pfile, &pfile->a_buff, sizeof (cpp_token));

  return &((cpp_token *) FUNC0 (pfile->a_buff))[macro->count++];
}