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
typedef  size_t uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  uchar_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  scalar_t__ hrtime_t ;
typedef  int data_type_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
#define  DATA_TYPE_BOOLEAN 156 
#define  DATA_TYPE_BOOLEAN_ARRAY 155 
#define  DATA_TYPE_BOOLEAN_VALUE 154 
#define  DATA_TYPE_BYTE 153 
#define  DATA_TYPE_BYTE_ARRAY 152 
#define  DATA_TYPE_DONTCARE 151 
#define  DATA_TYPE_DOUBLE 150 
#define  DATA_TYPE_HRTIME 149 
#define  DATA_TYPE_INT16 148 
#define  DATA_TYPE_INT16_ARRAY 147 
#define  DATA_TYPE_INT32 146 
#define  DATA_TYPE_INT32_ARRAY 145 
#define  DATA_TYPE_INT64 144 
#define  DATA_TYPE_INT64_ARRAY 143 
#define  DATA_TYPE_INT8 142 
#define  DATA_TYPE_INT8_ARRAY 141 
#define  DATA_TYPE_NVLIST 140 
#define  DATA_TYPE_NVLIST_ARRAY 139 
#define  DATA_TYPE_STRING 138 
#define  DATA_TYPE_STRING_ARRAY 137 
#define  DATA_TYPE_UINT16 136 
#define  DATA_TYPE_UINT16_ARRAY 135 
#define  DATA_TYPE_UINT32 134 
#define  DATA_TYPE_UINT32_ARRAY 133 
#define  DATA_TYPE_UINT64 132 
#define  DATA_TYPE_UINT64_ARRAY 131 
#define  DATA_TYPE_UINT8 130 
#define  DATA_TYPE_UINT8_ARRAY 129 
#define  DATA_TYPE_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,scalar_t__**,size_t*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,scalar_t__**,size_t*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,size_t*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char***,size_t*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,scalar_t__**,size_t*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 

int
FUNC32(FILE *fp, nvlist_t *nvl)
{
	nvpair_t *curr;
	boolean_t first = B_TRUE;

	FUNC0(fp, "{");

	for (curr = FUNC14(nvl, NULL); curr;
	    curr = FUNC14(nvl, curr)) {
		data_type_t type = FUNC17(curr);

		if (!first)
			FUNC0(fp, ",");
		else
			first = B_FALSE;

		if (FUNC15(fp, FUNC16(curr)) == -1)
			return (-1);
		FUNC0(fp, ":");

		switch (type) {
		case DATA_TYPE_STRING: {
			char *string = FUNC9(curr);
			if (FUNC15(fp, string) == -1)
				return (-1);
			break;
		}

		case DATA_TYPE_BOOLEAN: {
			FUNC0(fp, "true");
			break;
		}

		case DATA_TYPE_BOOLEAN_VALUE: {
			FUNC0(fp, "%s", FUNC2(curr) ==
			    B_TRUE ? "true" : "false");
			break;
		}

		case DATA_TYPE_BYTE: {
			FUNC0(fp, "%hhu", FUNC3(curr));
			break;
		}

		case DATA_TYPE_INT8: {
			FUNC0(fp, "%hhd", FUNC7(curr));
			break;
		}

		case DATA_TYPE_UINT8: {
			FUNC0(fp, "%hhu", FUNC13(curr));
			break;
		}

		case DATA_TYPE_INT16: {
			FUNC0(fp, "%hd", FUNC4(curr));
			break;
		}

		case DATA_TYPE_UINT16: {
			FUNC0(fp, "%hu", FUNC10(curr));
			break;
		}

		case DATA_TYPE_INT32: {
			FUNC0(fp, "%d", FUNC5(curr));
			break;
		}

		case DATA_TYPE_UINT32: {
			FUNC0(fp, "%u", FUNC11(curr));
			break;
		}

		case DATA_TYPE_INT64: {
			FUNC0(fp, "%lld",
			    (long long)FUNC6(curr));
			break;
		}

		case DATA_TYPE_UINT64: {
			FUNC0(fp, "%llu",
			    (unsigned long long)FUNC12(curr));
			break;
		}

		case DATA_TYPE_HRTIME: {
			hrtime_t val;
			FUNC1(FUNC21(curr, &val));
			FUNC0(fp, "%llu", (unsigned long long)val);
			break;
		}

		case DATA_TYPE_DOUBLE: {
			double val;
			FUNC1(FUNC20(curr, &val));
			FUNC0(fp, "%f", val);
			break;
		}

		case DATA_TYPE_NVLIST: {
			if (FUNC32(fp,
			    FUNC8(curr)) == -1)
				return (-1);
			break;
		}

		case DATA_TYPE_STRING_ARRAY: {
			char **val;
			uint_t valsz, i;
			FUNC1(FUNC27(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				if (FUNC15(fp, val[i]) == -1)
					return (-1);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_NVLIST_ARRAY: {
			nvlist_t **val;
			uint_t valsz, i;
			FUNC1(FUNC26(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				if (FUNC32(fp, val[i]) == -1)
					return (-1);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_BOOLEAN_ARRAY: {
			boolean_t *val;
			uint_t valsz, i;
			FUNC1(FUNC18(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				FUNC0(fp, val[i] == B_TRUE ?
				    "true" : "false");
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_BYTE_ARRAY: {
			uchar_t *val;
			uint_t valsz, i;
			FUNC1(FUNC19(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				FUNC0(fp, "%hhu", val[i]);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_UINT8_ARRAY: {
			uint8_t *val;
			uint_t valsz, i;
			FUNC1(FUNC31(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				FUNC0(fp, "%hhu", val[i]);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_INT8_ARRAY: {
			int8_t *val;
			uint_t valsz, i;
			FUNC1(FUNC25(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				FUNC0(fp, "%hhd", val[i]);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_UINT16_ARRAY: {
			uint16_t *val;
			uint_t valsz, i;
			FUNC1(FUNC28(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				FUNC0(fp, "%hu", val[i]);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_INT16_ARRAY: {
			int16_t *val;
			uint_t valsz, i;
			FUNC1(FUNC22(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				FUNC0(fp, "%hd", val[i]);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_UINT32_ARRAY: {
			uint32_t *val;
			uint_t valsz, i;
			FUNC1(FUNC29(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				FUNC0(fp, "%u", val[i]);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_INT32_ARRAY: {
			int32_t *val;
			uint_t valsz, i;
			FUNC1(FUNC23(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				FUNC0(fp, "%d", val[i]);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_UINT64_ARRAY: {
			uint64_t *val;
			uint_t valsz, i;
			FUNC1(FUNC30(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				FUNC0(fp, "%llu",
				    (unsigned long long)val[i]);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_INT64_ARRAY: {
			int64_t *val;
			uint_t valsz, i;
			FUNC1(FUNC24(curr, &val, &valsz));
			FUNC0(fp, "[");
			for (i = 0; i < valsz; i++) {
				if (i > 0)
					FUNC0(fp, ",");
				FUNC0(fp, "%lld", (long long)val[i]);
			}
			FUNC0(fp, "]");
			break;
		}

		case DATA_TYPE_UNKNOWN:
		case DATA_TYPE_DONTCARE:
			return (-1);
		}

	}

	FUNC0(fp, "}");
	return (0);
}