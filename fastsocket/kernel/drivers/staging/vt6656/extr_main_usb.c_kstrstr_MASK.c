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
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static UCHAR *FUNC2(const UCHAR *str1,const UCHAR *str2) {
  int str1_len=FUNC1(str1);
  int str2_len=FUNC1(str2);

  while (str1_len >= str2_len) {
       str1_len--;
      if(FUNC0(str1,str2,str2_len)==0)
         return (UCHAR *)str1;
        str1++;
  }
  return NULL;
}