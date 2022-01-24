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
#define  CCE_ALNUM 150 
#define  CCE_ALPHA 149 
#define  CCE_BLANK 148 
#define  CCE_CNTRL 147 
#define  CCE_DIGIT 146 
#define  CCE_GRAPH 145 
#define  CCE_LOWER 144 
#define  CCE_PRINT 143 
#define  CCE_PUNCT 142 
#define  CCE_SPACE 141 
#define  CCE_UPPER 140 
#define  CCE_XDIGIT 139 
#define  CHAR 138 
 int EOF ; 
#define  EOF_OP 137 
#define  NAME 136 
#define  NUMBER 135 
#define  OPTION_OP 134 
#define  OPT_OUTFILE 133 
#define  OPT_PREFIX 132 
#define  PREVCCL 131 
#define  SCDECL 130 
#define  SECTEND 129 
#define  XSCDECL 128 
 char* FUNC0 (char*) ; 
 int eofseen ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* nmstr ; 
 int num_rules ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int sectnum ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ trace ; 
 int yylval ; 

int     FUNC8 ()
{
	int     toktype;
	static int beglin = false;
	extern char *yytext;

	if (eofseen)
		toktype = EOF;
	else
		toktype = FUNC1 ();

	if (toktype == EOF || toktype == 0) {
		eofseen = 1;

		if (sectnum == 1) {
			FUNC7 (FUNC0("premature EOF"));
			sectnum = 2;
			toktype = SECTEND;
		}

		else
			toktype = 0;
	}

	if (trace) {
		if (beglin) {
			FUNC2 (stderr, "%d\t", num_rules + 1);
			beglin = 0;
		}

		switch (toktype) {
		case '<':
		case '>':
		case '^':
		case '$':
		case '"':
		case '[':
		case ']':
		case '{':
		case '}':
		case '|':
		case '(':
		case ')':
		case '-':
		case '/':
		case '\\':
		case '?':
		case '.':
		case '*':
		case '+':
		case ',':
			(void) FUNC6 (toktype, stderr);
			break;

		case '\n':
			(void) FUNC6 ('\n', stderr);

			if (sectnum == 2)
				beglin = 1;

			break;

		case SCDECL:
			FUNC3 ("%s", stderr);
			break;

		case XSCDECL:
			FUNC3 ("%x", stderr);
			break;

		case SECTEND:
			FUNC3 ("%%\n", stderr);

			/* We set beglin to be true so we'll start
			 * writing out numbers as we echo rules.
			 * flexscan() has already assigned sectnum.
			 */
			if (sectnum == 2)
				beglin = 1;

			break;

		case NAME:
			FUNC2 (stderr, "'%s'", nmstr);
			break;

		case CHAR:
			switch (yylval) {
			case '<':
			case '>':
			case '^':
			case '$':
			case '"':
			case '[':
			case ']':
			case '{':
			case '}':
			case '|':
			case '(':
			case ')':
			case '-':
			case '/':
			case '\\':
			case '?':
			case '.':
			case '*':
			case '+':
			case ',':
				FUNC2 (stderr, "\\%c", yylval);
				break;

			default:
				if (!FUNC4 (yylval) || !FUNC5 (yylval))
					FUNC2 (stderr,
						 "\\%.3o",
						 (unsigned int) yylval);
				else
					(void) FUNC6 (yylval, stderr);
				break;
			}

			break;

		case NUMBER:
			FUNC2 (stderr, "%d", yylval);
			break;

		case PREVCCL:
			FUNC2 (stderr, "[%d]", yylval);
			break;

		case EOF_OP:
			FUNC2 (stderr, "<<EOF>>");
			break;

		case OPTION_OP:
			FUNC2 (stderr, "%s ", yytext);
			break;

		case OPT_OUTFILE:
		case OPT_PREFIX:
		case CCE_ALNUM:
		case CCE_ALPHA:
		case CCE_BLANK:
		case CCE_CNTRL:
		case CCE_DIGIT:
		case CCE_GRAPH:
		case CCE_LOWER:
		case CCE_PRINT:
		case CCE_PUNCT:
		case CCE_SPACE:
		case CCE_UPPER:
		case CCE_XDIGIT:
			FUNC2 (stderr, "%s", yytext);
			break;

		case 0:
			FUNC2 (stderr, "%s", FUNC0("End Marker\n"));
			break;

		default:
			FUNC2 (stderr,
				 FUNC0
				 ("*Something Weird* - tok: %d val: %d\n"),
				 toktype, yylval);
			break;
		}
	}

	return toktype;
}