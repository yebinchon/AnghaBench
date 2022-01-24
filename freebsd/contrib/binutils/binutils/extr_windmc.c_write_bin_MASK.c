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
struct TYPE_6__ {TYPE_1__* lang; } ;
typedef  TYPE_2__ mc_node_lang ;
struct TYPE_5__ {int /*<<< orphan*/  sval; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__** mc_nodes_lang ; 
 int mc_nodes_lang_count ; 
 char* mcset_mc_basename ; 
 scalar_t__ mcset_prefix_bin ; 
 char* mcset_rc_dir ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_2__**,int) ; 
 char* FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  mc_node_lang *n = NULL;
  int i, c;

  if (! mc_nodes_lang_count)
    return;

  i = 0;
  while (i < mc_nodes_lang_count)
    {
      char *nd;
      char *filename;

      if (n && n->lang == mc_nodes_lang[i]->lang)
	{
	  i++;
	  continue;
	}
      n = mc_nodes_lang[i];
      c = i + 1;
      while (c < mc_nodes_lang_count && n->lang == mc_nodes_lang[c]->lang)
	c++;
      nd = FUNC0 (n->lang->sval);

      /* Prepare filename for binary output.  */
      filename = FUNC7 (FUNC5 (nd) + 4 + 1 + FUNC5 (mcset_mc_basename) + 1 + FUNC5 (mcset_rc_dir));
      FUNC4 (filename, mcset_rc_dir);
      if (mcset_prefix_bin)
	FUNC2 (filename + FUNC5 (filename), "%s_", mcset_mc_basename);
      FUNC3 (filename, nd);
      FUNC3 (filename, ".bin");

      /* Write message file.  */
      FUNC6 (filename, &mc_nodes_lang[i], (c - i));

      FUNC1 (filename);
      i = c;
    }
}