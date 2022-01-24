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
struct functable {int /*<<< orphan*/  func; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  IntFuncPtr ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 struct functable* functable ; 

__attribute__((used)) static IntFuncPtr
FUNC1(char *key)
{
  struct functable *fp;

  for (fp = functable; fp->name; fp++)
    if (FUNC0(fp->name, key))
        return (fp->func);
  return (IntFuncPtr) NULL;
}