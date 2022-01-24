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
struct attribute {scalar_t__ form; } ;

/* Variables and functions */
 scalar_t__ DW_FORM_data1 ; 
 scalar_t__ DW_FORM_data2 ; 
 scalar_t__ DW_FORM_data4 ; 
 scalar_t__ DW_FORM_data8 ; 
 scalar_t__ DW_FORM_sdata ; 
 scalar_t__ DW_FORM_udata ; 
 int FUNC0 (struct attribute*) ; 
 int FUNC1 (struct attribute*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static int
FUNC4 (struct attribute *attr, int default_value)
{
  if (attr->form == DW_FORM_sdata)
    return FUNC0 (attr);
  else if (attr->form == DW_FORM_udata
           || attr->form == DW_FORM_data1
           || attr->form == DW_FORM_data2
           || attr->form == DW_FORM_data4
           || attr->form == DW_FORM_data8)
    return FUNC1 (attr);
  else
    {
      FUNC2 (&symfile_complaints, "Attribute value is not a constant (%s)",
                 FUNC3 (attr->form));
      return default_value;
    }
}