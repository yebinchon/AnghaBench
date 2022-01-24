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
struct type {int dummy; } ;
struct dieinfo {scalar_t__ at_fund_type; scalar_t__ at_mod_u_d_type; scalar_t__ at_user_def_type; int /*<<< orphan*/ * at_mod_fund_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FT_VOID ; 
 struct type* FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_objfile ; 
 struct type* FUNC1 (scalar_t__) ; 
 struct type* FUNC2 (int /*<<< orphan*/ *) ; 
 struct type* FUNC3 (scalar_t__) ; 
 struct type* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct type* FUNC5 (scalar_t__) ; 

__attribute__((used)) static struct type *
FUNC6 (struct dieinfo *dip)
{
  struct type *type = NULL;

  if (dip->at_fund_type != 0)
    {
      type = FUNC1 (dip->at_fund_type);
    }
  else if (dip->at_mod_fund_type != NULL)
    {
      type = FUNC2 (dip->at_mod_fund_type);
    }
  else if (dip->at_user_def_type)
    {
      type = FUNC5 (dip->at_user_def_type);
      if (type == NULL)
	{
	  type = FUNC0 (dip->at_user_def_type, NULL);
	}
    }
  else if (dip->at_mod_u_d_type)
    {
      type = FUNC3 (dip->at_mod_u_d_type);
    }
  else
    {
      type = FUNC4 (current_objfile, FT_VOID);
    }
  return (type);
}