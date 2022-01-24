#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int len; } ;
struct TYPE_7__ {int /*<<< orphan*/  node; TYPE_1__ str; } ;
struct TYPE_8__ {TYPE_2__ val; } ;
typedef  TYPE_3__ cpp_token ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  SPELL_IDENT 129 
#define  SPELL_LITERAL 128 
 int FUNC1 (TYPE_3__ const*) ; 

unsigned int
FUNC2 (const cpp_token *token)
{
  unsigned int len;

  switch (FUNC1 (token))
    {
    default:		len = 4;				break;
    case SPELL_LITERAL:	len = token->val.str.len;		break;
    case SPELL_IDENT:	len = FUNC0 (token->val.node) * 10;	break;
    }

  return len;
}