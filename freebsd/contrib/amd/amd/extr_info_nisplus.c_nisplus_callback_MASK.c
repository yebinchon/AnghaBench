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
typedef  scalar_t__ voidp ;
struct nis_callback_data {int /*<<< orphan*/  ncd_m; int /*<<< orphan*/  (* ncd_fn ) (int /*<<< orphan*/ ,char*,char*) ;} ;
typedef  int /*<<< orphan*/  nis_object ;
typedef  int /*<<< orphan*/  nis_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC5(const nis_name key, const nis_object *value, voidp opaquedata)
{
  char *kp = FUNC3(FUNC1(value, 0), FUNC0(value, 0));
  char *vp = FUNC3(FUNC1(value, 1), FUNC0(value, 1));
  struct nis_callback_data *data = (struct nis_callback_data *) opaquedata;

  FUNC2("NISplus callback for <%s,%s>", kp, vp);

  (*data->ncd_fn) (data->ncd_m, kp, vp);

  /*
   * We want more ...
   */
  return FALSE;
}