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
struct type {int dummy; } ;
typedef  enum amd64_reg_class { ____Placeholder_amd64_reg_class } amd64_reg_class ;

/* Variables and functions */
 int AMD64_MEMORY ; 
 int AMD64_NO_CLASS ; 
 int AMD64_SSE ; 
 int AMD64_SSEUP ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int FUNC1 (struct type*,int) ; 
 scalar_t__ FUNC2 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct type*,int) ; 
 int FUNC4 (struct type*) ; 
 int FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (struct type*,int*) ; 
 int FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (struct type*) ; 
 struct type* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12 (struct type *type, enum amd64_reg_class class[2])
{
  int len = FUNC4 (type);

  /* 1. If the size of an object is larger than two eightbytes, or in
        C++, is a non-POD structure or union type, or contains
        unaligned fields, it has class memory.  */
  if (len > 16 || FUNC9 (type))
    {
      class[0] = class[1] = AMD64_MEMORY;
      return;
    }

  /* 2. Both eightbytes get initialized to class NO_CLASS.  */
  class[0] = class[1] = AMD64_NO_CLASS;

  /* 3. Each field of an object is classified recursively so that
        always two fields are considered. The resulting class is
        calculated according to the classes of the fields in the
        eightbyte: */

  if (FUNC0 (type) == TYPE_CODE_ARRAY)
    {
      struct type *subtype = FUNC10 (FUNC6 (type));

      /* All fields in an array have the same type.  */
      FUNC7 (subtype, class);
      if (len > 8 && class[1] == AMD64_NO_CLASS)
	class[1] = class[0];
    }
  else
    {
      int i;

      /* Structure or union.  */
      FUNC11 (FUNC0 (type) == TYPE_CODE_STRUCT
		  || FUNC0 (type) == TYPE_CODE_UNION);

      for (i = 0; i < FUNC5 (type); i++)
	{
	  struct type *subtype = FUNC10 (FUNC3 (type, i));
	  int pos = FUNC1 (type, i) / 64;
	  enum amd64_reg_class subclass[2];

	  /* Ignore static fields.  */
	  if (FUNC2 (type, i))
	    continue;

	  FUNC11 (pos == 0 || pos == 1);

	  FUNC7 (subtype, subclass);
	  class[pos] = FUNC8 (class[pos], subclass[0]);
	  if (pos == 0)
	    class[1] = FUNC8 (class[1], subclass[1]);
	}
    }

  /* 4. Then a post merger cleanup is done:  */

  /* Rule (a): If one of the classes is MEMORY, the whole argument is
     passed in memory.  */
  if (class[0] == AMD64_MEMORY || class[1] == AMD64_MEMORY)
    class[0] = class[1] = AMD64_MEMORY;

  /* Rule (b): If SSEUP is not preceeded by SSE, it is converted to
     SSE.  */
  if (class[0] == AMD64_SSEUP)
    class[0] = AMD64_SSE;
  if (class[1] == AMD64_SSEUP && class[0] != AMD64_SSE)
    class[1] = AMD64_SSE;
}