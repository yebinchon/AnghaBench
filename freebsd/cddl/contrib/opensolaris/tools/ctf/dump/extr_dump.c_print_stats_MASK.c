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
struct TYPE_2__ {scalar_t__ s_ndata; scalar_t__ s_nfunc; scalar_t__ s_nargs; scalar_t__ s_argmax; scalar_t__ s_ntypes; scalar_t__* s_types; scalar_t__ s_nsmem; scalar_t__ s_smmax; scalar_t__ s_nsbytes; scalar_t__ s_sbmax; scalar_t__ s_numem; scalar_t__ s_ummax; scalar_t__ s_nubytes; scalar_t__ s_ubmax; scalar_t__ s_nemem; scalar_t__ s_emmax; scalar_t__ s_nstr; scalar_t__ s_strlen; scalar_t__ s_strmax; } ;

/* Variables and functions */
 size_t CTF_K_ARRAY ; 
 size_t CTF_K_CONST ; 
 size_t CTF_K_ENUM ; 
 size_t CTF_K_FLOAT ; 
 size_t CTF_K_FORWARD ; 
 size_t CTF_K_FUNCTION ; 
 size_t CTF_K_INTEGER ; 
 size_t CTF_K_POINTER ; 
 size_t CTF_K_RESTRICT ; 
 size_t CTF_K_STRUCT ; 
 size_t CTF_K_TYPEDEF ; 
 size_t CTF_K_UNION ; 
 size_t CTF_K_UNKNOWN ; 
 size_t CTF_K_VOLATILE ; 
 int E_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,float) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ stats ; 

__attribute__((used)) static int
FUNC4(void)
{
	FUNC2("- CTF Statistics ");

	FUNC1("total number of data objects", stats.s_ndata);
	(void) FUNC3("\n");

	FUNC1("total number of functions", stats.s_nfunc);
	FUNC1("total number of function arguments", stats.s_nargs);
	FUNC1("maximum argument list length", stats.s_argmax);

	if (stats.s_nfunc != 0) {
		FUNC0("average argument list length",
		    (float)stats.s_nargs / (float)stats.s_nfunc);
	}

	(void) FUNC3("\n");

	FUNC1("total number of types", stats.s_ntypes);
	FUNC1("total number of integers", stats.s_types[CTF_K_INTEGER]);
	FUNC1("total number of floats", stats.s_types[CTF_K_FLOAT]);
	FUNC1("total number of pointers", stats.s_types[CTF_K_POINTER]);
	FUNC1("total number of arrays", stats.s_types[CTF_K_ARRAY]);
	FUNC1("total number of func types", stats.s_types[CTF_K_FUNCTION]);
	FUNC1("total number of structs", stats.s_types[CTF_K_STRUCT]);
	FUNC1("total number of unions", stats.s_types[CTF_K_UNION]);
	FUNC1("total number of enums", stats.s_types[CTF_K_ENUM]);
	FUNC1("total number of forward tags", stats.s_types[CTF_K_FORWARD]);
	FUNC1("total number of typedefs", stats.s_types[CTF_K_TYPEDEF]);
	FUNC1("total number of volatile types",
	    stats.s_types[CTF_K_VOLATILE]);
	FUNC1("total number of const types", stats.s_types[CTF_K_CONST]);
	FUNC1("total number of restrict types",
	    stats.s_types[CTF_K_RESTRICT]);
	FUNC1("total number of unknowns (holes)",
	    stats.s_types[CTF_K_UNKNOWN]);

	(void) FUNC3("\n");

	FUNC1("total number of struct members", stats.s_nsmem);
	FUNC1("maximum number of struct members", stats.s_smmax);
	FUNC1("total size of all structs", stats.s_nsbytes);
	FUNC1("maximum size of a struct", stats.s_sbmax);

	if (stats.s_types[CTF_K_STRUCT] != 0) {
		FUNC0("average number of struct members",
		    (float)stats.s_nsmem / (float)stats.s_types[CTF_K_STRUCT]);
		FUNC0("average size of a struct", (float)stats.s_nsbytes /
		    (float)stats.s_types[CTF_K_STRUCT]);
	}

	(void) FUNC3("\n");

	FUNC1("total number of union members", stats.s_numem);
	FUNC1("maximum number of union members", stats.s_ummax);
	FUNC1("total size of all unions", stats.s_nubytes);
	FUNC1("maximum size of a union", stats.s_ubmax);

	if (stats.s_types[CTF_K_UNION] != 0) {
		FUNC0("average number of union members",
		    (float)stats.s_numem / (float)stats.s_types[CTF_K_UNION]);
		FUNC0("average size of a union", (float)stats.s_nubytes /
		    (float)stats.s_types[CTF_K_UNION]);
	}

	(void) FUNC3("\n");

	FUNC1("total number of enum members", stats.s_nemem);
	FUNC1("maximum number of enum members", stats.s_emmax);

	if (stats.s_types[CTF_K_ENUM] != 0) {
		FUNC0("average number of enum members",
		    (float)stats.s_nemem / (float)stats.s_types[CTF_K_ENUM]);
	}

	(void) FUNC3("\n");

	FUNC1("total number of unique strings", stats.s_nstr);
	FUNC1("bytes of string data", stats.s_strlen);
	FUNC1("maximum string length", stats.s_strmax);

	if (stats.s_nstr != 0) {
		FUNC0("average string length",
		    (float)stats.s_strlen / (float)stats.s_nstr);
	}

	(void) FUNC3("\n");
	return (E_SUCCESS);
}