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
struct diff_block {int /*<<< orphan*/ ** ranges; } ;
typedef  enum diff_type { ____Placeholder_diff_type } diff_type ;

/* Variables and functions */
 int ADD ; 
 int CHANGE ; 
 int DELETE ; 
 int ERROR ; 
 size_t RANGE_END ; 
 size_t RANGE_START ; 
 char* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static enum diff_type
FUNC2 (char **string, struct diff_block *db)
{
  char *s = *string;
  enum diff_type type;

  /* Read first set of digits */
  s = FUNC0 (FUNC1 (s), &db->ranges[0][RANGE_START]);
  if (! s)
    return ERROR;

  /* Was that the only digit? */
  s = FUNC1 (s);
  if (*s == ',')
    {
      s = FUNC0 (s + 1, &db->ranges[0][RANGE_END]);
      if (! s)
	return ERROR;
    }
  else
    db->ranges[0][RANGE_END] = db->ranges[0][RANGE_START];

  /* Get the letter */
  s = FUNC1 (s);
  switch (*s)
    {
    case 'a':
      type = ADD;
      break;
    case 'c':
      type = CHANGE;
      break;
    case 'd':
      type = DELETE;
      break;
    default:
      return ERROR;			/* Bad format */
    }
  s++;				/* Past letter */

  /* Read second set of digits */
  s = FUNC0 (FUNC1 (s), &db->ranges[1][RANGE_START]);
  if (! s)
    return ERROR;

  /* Was that the only digit? */
  s = FUNC1 (s);
  if (*s == ',')
    {
      s = FUNC0 (s + 1, &db->ranges[1][RANGE_END]);
      if (! s)
	return ERROR;
      s = FUNC1 (s);		/* To move to end */
    }
  else
    db->ranges[1][RANGE_END] = db->ranges[1][RANGE_START];

  *string = s;
  return type;
}