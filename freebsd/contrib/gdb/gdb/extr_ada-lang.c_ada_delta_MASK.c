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
 int FUNC1 (char const*,char*,long*,long*) ; 

DOUBLEST
FUNC2 (struct type *type)
{
  const char *encoding = FUNC0 (type);
  long num, den;

  if (FUNC1 (encoding, "_%ld_%ld", &num, &den) < 2)
    return -1.0;
  else
    return (DOUBLEST) num / (DOUBLEST) den;
}