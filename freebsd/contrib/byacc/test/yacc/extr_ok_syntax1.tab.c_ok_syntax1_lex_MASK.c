#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ival; } ;

/* Variables and functions */
 int DIGIT ; 
 int LETTER ; 
 int* base ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__* yylval ; 

int
FUNC3()
{
	/* lexical analysis routine */
	/* returns LETTER for a lower case letter, yylval = 0 through 25 */
	/* return DIGIT for a digit, yylval = 0 through 9 */
	/* all other characters are returned immediately */

    int c;

    while( (c=FUNC0()) == ' ' )   { /* skip blanks */ }

    /* c is now nonblank */

    if( FUNC2( c )) {
	yylval->ival = (c - 'a');
	return ( LETTER );
    }
    if( FUNC1( c )) {
	yylval->ival = (c - '0') % (*base);
	return ( DIGIT );
    }
    return( c );
}