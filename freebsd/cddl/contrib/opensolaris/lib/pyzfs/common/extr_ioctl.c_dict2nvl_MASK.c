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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyExc_KeyError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/ * Py_True ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static nvlist_t *
FUNC16(PyObject *d)
{
	nvlist_t *nvl;
	int err;
	PyObject *key, *value;
	int pos = 0;

	if (!FUNC1(d)) {
		FUNC3(PyExc_ValueError, d);
		return (NULL);
	}

	err = FUNC14(&nvl, NV_UNIQUE_NAME, 0);
	FUNC8(err == 0);

	while (FUNC2(d, &pos, &key, &value)) {
		char *keystr = FUNC6(key);
		if (keystr == NULL) {
			FUNC3(PyExc_KeyError, key);
			FUNC15(nvl);
			return (NULL);
		}

		if (FUNC1(value)) {
			nvlist_t *valnvl = FUNC16(value);
			err = FUNC11(nvl, keystr, valnvl);
			FUNC15(valnvl);
		} else if (value == Py_None) {
			err = FUNC9(nvl, keystr);
		} else if (FUNC7(value)) {
			char *valstr = FUNC6(value);
			err = FUNC12(nvl, keystr, valstr);
		} else if (FUNC5(value)) {
			uint64_t valint = FUNC4(value);
			err = FUNC13(nvl, keystr, valint);
		} else if (FUNC0(value)) {
			boolean_t valbool = value == Py_True ? B_TRUE : B_FALSE;
			err = FUNC10(nvl, keystr, valbool);
		} else {
			FUNC3(PyExc_ValueError, value);
			FUNC15(nvl);
			return (NULL);
		}
		FUNC8(err == 0);
	}

	return (nvl);
}