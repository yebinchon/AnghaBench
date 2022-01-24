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
struct mode_data {int dummy; } ;
typedef  enum requirement { ____Placeholder_requirement } requirement ;

/* Variables and functions */
 int /*<<< orphan*/  bytesize ; 
 int /*<<< orphan*/  component ; 
 int /*<<< orphan*/  format ; 
 int /*<<< orphan*/  ncomponents ; 
 int /*<<< orphan*/  precision ; 
 int /*<<< orphan*/  FUNC0 (struct mode_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (struct mode_data *m,
	       enum requirement r_precision,
	       enum requirement r_bytesize,
	       enum requirement r_component,
	       enum requirement r_ncomponents,
	       enum requirement r_format)
{
  FUNC0 (m, precision);
  FUNC0 (m, bytesize);
  FUNC0 (m, component);
  FUNC0 (m, ncomponents);
  FUNC0 (m, format);
}