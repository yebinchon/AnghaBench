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
typedef  char* uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  char* boolean_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
#define  DATA_TYPE_BOOLEAN 132 
#define  DATA_TYPE_BOOLEAN_VALUE 131 
#define  DATA_TYPE_NVLIST 130 
#define  DATA_TYPE_STRING 129 
#define  DATA_TYPE_UINT64 128 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static PyObject *
FUNC13(nvlist_t *nvl)
{
	PyObject *pyo;
	nvpair_t *nvp;

	pyo = FUNC0();

	for (nvp = FUNC6(nvl, NULL); nvp;
	    nvp = FUNC6(nvl, nvp)) {
		PyObject *pyval;
		char *sval;
		uint64_t ival;
		boolean_t bval;
		nvlist_t *nval;

		switch (FUNC8(nvp)) {
		case DATA_TYPE_STRING:
			(void) FUNC11(nvp, &sval);
			pyval = FUNC3("s", sval);
			break;

		case DATA_TYPE_UINT64:
			(void) FUNC12(nvp, &ival);
			pyval = FUNC3("K", ival);
			break;

		case DATA_TYPE_NVLIST:
			(void) FUNC10(nvp, &nval);
			pyval = FUNC13(nval);
			break;

		case DATA_TYPE_BOOLEAN:
			FUNC5(Py_None);
			pyval = Py_None;
			break;

		case DATA_TYPE_BOOLEAN_VALUE:
			(void) FUNC9(nvp, &bval);
			pyval = FUNC3("i", bval);
			break;

		default:
			FUNC2(PyExc_ValueError);
			FUNC4(pyo);
			return (NULL);
		}

		FUNC1(pyo, FUNC7(nvp), pyval);
		FUNC4(pyval);
	}

	return (pyo);
}