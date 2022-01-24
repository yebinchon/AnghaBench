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
typedef  double DOUBLEST ;

/* Variables and functions */
 char* FUNC0 (struct type*) ; 
 int FUNC1 (char const*,char*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ; 

__attribute__((used)) static DOUBLEST
FUNC2 (struct type *type)
{
  const char *encoding = FUNC0 (type);
  unsigned long num0, den0, num1, den1;
  int n;

  n = FUNC1 (encoding, "_%lu_%lu_%lu_%lu", &num0, &den0, &num1, &den1);

  if (n < 2)
    return 1.0;
  else if (n == 4)
    return (DOUBLEST) num1 / (DOUBLEST) den1;
  else
    return (DOUBLEST) num0 / (DOUBLEST) den0;
}