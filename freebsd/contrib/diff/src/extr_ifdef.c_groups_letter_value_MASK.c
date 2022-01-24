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
struct group {int from; int upto; int /*<<< orphan*/  file; } ;
typedef  int lin ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static lin
FUNC1 (struct group const *g, char letter)
{
  switch (letter)
    {
    case 'E': letter = 'e'; g++; break;
    case 'F': letter = 'f'; g++; break;
    case 'L': letter = 'l'; g++; break;
    case 'M': letter = 'm'; g++; break;
    case 'N': letter = 'n'; g++; break;
    }

  switch (letter)
    {
      case 'e': return FUNC0 (g->file, g->from) - 1;
      case 'f': return FUNC0 (g->file, g->from);
      case 'l': return FUNC0 (g->file, g->upto) - 1;
      case 'm': return FUNC0 (g->file, g->upto);
      case 'n': return g->upto - g->from;
      default: return -1;
    }
}