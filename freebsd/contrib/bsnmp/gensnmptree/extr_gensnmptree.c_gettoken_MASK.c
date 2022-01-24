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

/* Variables and functions */
#define  TOK_ACCESS 138 
#define  TOK_BITS 137 
#define  TOK_DEFTYPE 136 
#define  TOK_ENUM 135 
#define  TOK_EOF 134 
#define  TOK_FILENAME 133 
#define  TOK_INCLUDE 132 
#define  TOK_NUM 131 
#define  TOK_STR 130 
#define  TOK_TYPE 129 
#define  TOK_TYPEDEF 128 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 
 char* str ; 
 int val ; 

__attribute__((used)) static int
FUNC4(void)
{
	int tok = FUNC2();

	if (debug) {
		switch (tok) {

		  case TOK_EOF:
			FUNC1(stderr, "EOF ");
			break;

		  case TOK_NUM:
			FUNC1(stderr, "NUM(%d) ", val);
			break;

		  case TOK_STR:
			FUNC1(stderr, "STR(%s) ", str);
			break;

		  case TOK_ACCESS:
			FUNC1(stderr, "ACCESS(%d) ", val);
			break;

		  case TOK_TYPE:
			FUNC1(stderr, "TYPE(%d) ", val);
			break;

		  case TOK_ENUM:
			FUNC1(stderr, "ENUM ");
			break;

		  case TOK_BITS:
			FUNC1(stderr, "BITS ");
			break;

		  case TOK_TYPEDEF:
			FUNC1(stderr, "TYPEDEF ");
			break;

		  case TOK_DEFTYPE:
			FUNC1(stderr, "DEFTYPE(%s,%d) ", str, val);
			break;

		  case TOK_INCLUDE:
			FUNC1(stderr, "INCLUDE ");
			break;

		  case TOK_FILENAME:
			FUNC1(stderr, "FILENAME ");
			break;

		  default:
			if (tok < TOK_EOF) {
				if (FUNC3(tok))
					FUNC1(stderr, "'%c' ", tok);
				else if (tok == '\n')
					FUNC1(stderr, "\n");
				else
					FUNC1(stderr, "%02x ", tok);
			} else
				FUNC0();
			break;
		}
	}
	return (tok);
}