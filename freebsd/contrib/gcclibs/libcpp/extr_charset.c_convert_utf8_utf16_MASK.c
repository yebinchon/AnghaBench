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
typedef  int /*<<< orphan*/  uchar ;
struct _cpp_strbuf {int dummy; } ;
typedef  int /*<<< orphan*/  iconv_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,struct _cpp_strbuf*) ; 
 int /*<<< orphan*/  one_utf8_to_utf16 ; 

__attribute__((used)) static bool
FUNC1 (iconv_t cd, const uchar *from, size_t flen,
		    struct _cpp_strbuf *to)
{
  return FUNC0 (one_utf8_to_utf16, cd, from, flen, to);
}