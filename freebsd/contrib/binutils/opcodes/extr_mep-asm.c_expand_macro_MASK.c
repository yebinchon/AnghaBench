#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* expansion; } ;
typedef  TYPE_1__ macro ;
struct TYPE_6__ {char* start; int len; } ;
typedef  TYPE_2__ arg ;

/* Variables and functions */
 char MAXARGS ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC3 (arg *args, int narg, macro *mac)
{
  char *result = 0, *rescanned_result = 0;
  char *e = mac->expansion;
  char *mark = e;
  int arg = 0;

  /*  printf("expanding macro %s with %d args\n", mac->name, narg + 1); */
  while (*e)
    {
      if (*e == '`' && 
	  (*e+1) && 
	  ((*(e + 1) - '1') <= MAXARGS) &&
	  ((*(e + 1) - '1') <= narg))
	{
	  result = FUNC2 (result, mark, e - mark);
	  arg = (*(e + 1) - '1');
	  /* printf("replacing `%d with %s\n", arg+1, args[arg].start); */
	  result = FUNC2 (result, args[arg].start, args[arg].len);
	  ++e;
	  mark = e+1;
	}
      ++e;
    }

  if (mark != e)
    result = FUNC2 (result, mark, e - mark);

  if (result)
    {
      rescanned_result = FUNC0 (result, 0);
      FUNC1 (result);
      return rescanned_result;
    }
  else 
    return result;
}