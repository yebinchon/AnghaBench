#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rc_uint_type ;
struct TYPE_9__ {scalar_t__ vid; struct TYPE_9__* next; TYPE_3__ const* lang; } ;
typedef  TYPE_1__ mc_node_lang ;
struct TYPE_10__ {TYPE_1__* sub; } ;
typedef  TYPE_2__ mc_node ;
struct TYPE_11__ {scalar_t__ nval; } ;
typedef  TYPE_3__ mc_keyword ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int) ; 

mc_node_lang *
FUNC4 (mc_node *root, const mc_keyword *lang, rc_uint_type vid)
{
  mc_node_lang *ret, *h, *p;

  if (! lang || ! root)
    FUNC1 (FUNC0("try to add a ill language."));
  ret = FUNC3 (sizeof (mc_node_lang));
  FUNC2 (ret, 0, sizeof (mc_node_lang));
  ret->lang = lang;
  ret->vid = vid;
  if ((h = root->sub) == NULL)
    root->sub = ret;
  else
    {
      p = NULL;
      while (h != NULL)
	{
	  if (h->lang->nval > lang->nval)
	    break;
	  if (h->lang->nval == lang->nval)
	    {
	      if (h->vid > vid)
		break;
	      if (h->vid == vid)
		FUNC1 ("double defined message id %ld.\n", (long) vid);
	    }
	  h = (p = h)->next;
	}
      ret->next = h;
      if (! p)
	root->sub = ret;
      else
	p->next = ret;
    }
  return ret;
}