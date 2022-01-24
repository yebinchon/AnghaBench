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
struct objfile {int dummy; } ;

/* Variables and functions */
#define  FT_CHAR 146 
#define  FT_DBL_PREC_FLOAT 145 
#define  FT_EXT_PREC_FLOAT 144 
#define  FT_FLOAT 143 
#define  FT_INTEGER 142 
#define  FT_LONG 141 
#define  FT_LONG_LONG 140 
#define  FT_SHORT 139 
#define  FT_SIGNED_CHAR 138 
#define  FT_SIGNED_INTEGER 137 
#define  FT_SIGNED_LONG 136 
#define  FT_SIGNED_LONG_LONG 135 
#define  FT_SIGNED_SHORT 134 
#define  FT_UNSIGNED_CHAR 133 
#define  FT_UNSIGNED_INTEGER 132 
#define  FT_UNSIGNED_LONG 131 
#define  FT_UNSIGNED_LONG_LONG 130 
#define  FT_UNSIGNED_SHORT 129 
#define  FT_VOID 128 
 int TARGET_CHAR_BIT ; 
 int TARGET_DOUBLE_BIT ; 
 int TARGET_FLOAT_BIT ; 
 int TARGET_INT_BIT ; 
 int TARGET_LONG_BIT ; 
 int TARGET_LONG_DOUBLE_BIT ; 
 int TARGET_LONG_LONG_BIT ; 
 int TARGET_SHORT_BIT ; 
 int /*<<< orphan*/  TYPE_CODE_CHAR ; 
 int /*<<< orphan*/  TYPE_CODE_FLT ; 
 int /*<<< orphan*/  TYPE_CODE_INT ; 
 int /*<<< orphan*/  TYPE_CODE_VOID ; 
 int /*<<< orphan*/  TYPE_FLAG_UNSIGNED ; 
 struct type* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

struct type *
FUNC2 (struct objfile *objfile, int typeid)
{
  struct type *type = NULL;

  switch (typeid)
    {
    default:
      /* FIXME:  For now, if we are asked to produce a type not in this
         language, create the equivalent of a C integer type with the
         name "<?type?>".  When all the dust settles from the type
         reconstruction work, this should probably become an error. */
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_INT_BIT / TARGET_CHAR_BIT,
			0, "<?type?>", objfile);
      FUNC1 ("internal error: no Pascal fundamental type %d", typeid);
      break;
    case FT_VOID:
      type = FUNC0 (TYPE_CODE_VOID,
			TARGET_CHAR_BIT / TARGET_CHAR_BIT,
			0, "void", objfile);
      break;
    case FT_CHAR:
      type = FUNC0 (TYPE_CODE_CHAR,
			TARGET_CHAR_BIT / TARGET_CHAR_BIT,
			0, "char", objfile);
      break;
    case FT_SIGNED_CHAR:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_CHAR_BIT / TARGET_CHAR_BIT,
			0, "shortint", objfile);
      break;
    case FT_UNSIGNED_CHAR:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_CHAR_BIT / TARGET_CHAR_BIT,
			TYPE_FLAG_UNSIGNED, "byte", objfile);
      break;
    case FT_SHORT:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_SHORT_BIT / TARGET_CHAR_BIT,
			0, "integer", objfile);
      break;
    case FT_SIGNED_SHORT:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_SHORT_BIT / TARGET_CHAR_BIT,
			0, "integer", objfile);		/* FIXME-fnf */
      break;
    case FT_UNSIGNED_SHORT:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_SHORT_BIT / TARGET_CHAR_BIT,
			TYPE_FLAG_UNSIGNED, "word", objfile);
      break;
    case FT_INTEGER:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_INT_BIT / TARGET_CHAR_BIT,
			0, "longint", objfile);
      break;
    case FT_SIGNED_INTEGER:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_INT_BIT / TARGET_CHAR_BIT,
			0, "longint", objfile);		/* FIXME -fnf */
      break;
    case FT_UNSIGNED_INTEGER:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_INT_BIT / TARGET_CHAR_BIT,
			TYPE_FLAG_UNSIGNED, "cardinal", objfile);
      break;
    case FT_LONG:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_LONG_BIT / TARGET_CHAR_BIT,
			0, "long", objfile);
      break;
    case FT_SIGNED_LONG:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_LONG_BIT / TARGET_CHAR_BIT,
			0, "long", objfile);	/* FIXME -fnf */
      break;
    case FT_UNSIGNED_LONG:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_LONG_BIT / TARGET_CHAR_BIT,
			TYPE_FLAG_UNSIGNED, "unsigned long", objfile);
      break;
    case FT_LONG_LONG:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_LONG_LONG_BIT / TARGET_CHAR_BIT,
			0, "long long", objfile);
      break;
    case FT_SIGNED_LONG_LONG:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_LONG_LONG_BIT / TARGET_CHAR_BIT,
			0, "signed long long", objfile);
      break;
    case FT_UNSIGNED_LONG_LONG:
      type = FUNC0 (TYPE_CODE_INT,
			TARGET_LONG_LONG_BIT / TARGET_CHAR_BIT,
			TYPE_FLAG_UNSIGNED, "unsigned long long", objfile);
      break;
    case FT_FLOAT:
      type = FUNC0 (TYPE_CODE_FLT,
			TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
			0, "float", objfile);
      break;
    case FT_DBL_PREC_FLOAT:
      type = FUNC0 (TYPE_CODE_FLT,
			TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
			0, "double", objfile);
      break;
    case FT_EXT_PREC_FLOAT:
      type = FUNC0 (TYPE_CODE_FLT,
			TARGET_LONG_DOUBLE_BIT / TARGET_CHAR_BIT,
			0, "extended", objfile);
      break;
    }
  return (type);
}