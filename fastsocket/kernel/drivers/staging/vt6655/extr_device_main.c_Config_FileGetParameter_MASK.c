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
typedef  char UCHAR ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(UCHAR *string, UCHAR *dest,UCHAR *source)
{
  UCHAR buf1[100];
  int source_len = FUNC3(source);

    FUNC1(buf1,0,100);
    FUNC2(buf1, string);
    FUNC2(buf1, "=");
    source+=FUNC3(buf1);

   FUNC0(dest,source,source_len-FUNC3(buf1));
 return TRUE;
}