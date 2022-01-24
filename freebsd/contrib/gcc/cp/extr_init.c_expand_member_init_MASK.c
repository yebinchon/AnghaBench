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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,char*) ; 
 int /*<<< orphan*/  current_class_ref ; 
 char* current_class_type ; 
 scalar_t__ current_template_parms ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,...) ; 
 scalar_t__ FUNC15 (char*,scalar_t__,int,int) ; 
 scalar_t__ FUNC16 (scalar_t__,char*,scalar_t__) ; 

tree
FUNC17 (tree name)
{
  tree basetype;
  tree field;

  if (!current_class_ref)
    return NULL_TREE;

  if (!name)
    {
      /* This is an obsolete unnamed base class initializer.  The
	 parser will already have warned about its use.  */
      switch (FUNC2 (FUNC9 (current_class_type)))
	{
	case 0:
	  FUNC14 ("unnamed initializer for %qT, which has no base classes",
		 current_class_type);
	  return NULL_TREE;
	case 1:
	  basetype = FUNC3
	    (FUNC0 (FUNC9 (current_class_type), 0));
	  break;
	default:
	  FUNC14 ("unnamed initializer for %qT, which uses multiple inheritance",
		 current_class_type);
	  return NULL_TREE;
      }
    }
  else if (FUNC12 (name))
    {
      basetype = FUNC10 (name);
      name = FUNC11 (name);
    }
  else if (FUNC7 (name) == TYPE_DECL)
    basetype = FUNC10 (FUNC8 (name));
  else
    basetype = NULL_TREE;

  if (basetype)
    {
      tree class_binfo;
      tree direct_binfo;
      tree virtual_binfo;
      int i;

      if (current_template_parms)
	return basetype;

      class_binfo = FUNC9 (current_class_type);
      direct_binfo = NULL_TREE;
      virtual_binfo = NULL_TREE;

      /* Look for a direct base.  */
      for (i = 0; FUNC1 (class_binfo, i, direct_binfo); ++i)
	if (FUNC6 (FUNC3 (direct_binfo), basetype))
	  break;

      /* Look for a virtual base -- unless the direct base is itself
	 virtual.  */
      if (!direct_binfo || !FUNC4 (direct_binfo))
	virtual_binfo = FUNC13 (basetype, current_class_type);

      /* [class.base.init]

	 If a mem-initializer-id is ambiguous because it designates
	 both a direct non-virtual base class and an inherited virtual
	 base class, the mem-initializer is ill-formed.  */
      if (direct_binfo && virtual_binfo)
	{
	  FUNC14 ("%qD is both a direct base and an indirect virtual base",
		 basetype);
	  return NULL_TREE;
	}

      if (!direct_binfo && !virtual_binfo)
	{
	  if (FUNC5 (current_class_type))
	    FUNC14 ("type %qT is not a direct or virtual base of %qT",
		   basetype, current_class_type);
	  else
	    FUNC14 ("type %qT is not a direct base of %qT",
		   basetype, current_class_type);
	  return NULL_TREE;
	}

      return direct_binfo ? direct_binfo : virtual_binfo;
    }
  else
    {
      if (FUNC7 (name) == IDENTIFIER_NODE)
	field = FUNC15 (current_class_type, name, 1, false);
      else
	field = name;

      if (FUNC16 (field, current_class_type, name))
	return field;
    }

  return NULL_TREE;
}