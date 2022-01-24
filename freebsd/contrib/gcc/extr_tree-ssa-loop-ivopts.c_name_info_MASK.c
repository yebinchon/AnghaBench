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
typedef  int /*<<< orphan*/  tree ;
struct version_info {int dummy; } ;
struct ivopts_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct version_info* FUNC1 (struct ivopts_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct version_info *
FUNC2 (struct ivopts_data *data, tree name)
{
  return FUNC1 (data, FUNC0 (name));
}