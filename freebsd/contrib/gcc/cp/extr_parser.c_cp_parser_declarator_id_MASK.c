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
typedef  int /*<<< orphan*/  cp_parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static tree
FUNC3 (cp_parser* parser, bool optional_p)
{
  tree id;
  /* The expression must be an id-expression.  Assume that qualified
     names are the names of types so that:

       template <class T>
       int S<T>::R::i = 3;

     will work; we must treat `S<T>::R' as the name of a type.
     Similarly, assume that qualified names are templates, where
     required, so that:

       template <class T>
       int S<T>::R<T>::i = 3;

     will work, too.  */
  id = FUNC2 (parser,
				/*template_keyword_p=*/false,
				/*check_dependency_p=*/false,
				/*template_p=*/NULL,
				/*declarator_p=*/true,
				optional_p);
  if (id && FUNC1 (id))
    id = FUNC0 (id);
  return id;
}