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
typedef  int /*<<< orphan*/ * rtx ;
typedef  int /*<<< orphan*/  rtvec ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ASHIFT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  IOR ; 
 int /*<<< orphan*/ * NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 int /*<<< orphan*/  TARGET_SSE ; 
 int UNITS_PER_WORD ; 
#define  V16QImode 137 
#define  V2DFmode 136 
#define  V2DImode 135 
#define  V2SFmode 134 
#define  V2SImode 133 
#define  V4HImode 132 
#define  V4SFmode 131 
#define  V4SImode 130 
#define  V8HImode 129 
#define  V8QImode 128 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int const) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int word_mode ; 

__attribute__((used)) static void
FUNC23 (bool mmx_ok, enum machine_mode mode,
				 rtx target, rtx vals)
{
  enum machine_mode half_mode = FUNC2 (mode);
  rtx op0 = NULL, op1 = NULL;
  bool use_vec_concat = false;

  switch (mode)
    {
    case V2SFmode:
    case V2SImode:
      if (!mmx_ok && !TARGET_SSE)
	break;
      /* FALLTHRU */

    case V2DFmode:
    case V2DImode:
      /* For the two element vectors, we always implement VEC_CONCAT.  */
      op0 = FUNC5 (vals, 0, 0);
      op1 = FUNC5 (vals, 0, 1);
      use_vec_concat = true;
      break;

    case V4SFmode:
      half_mode = V2SFmode;
      goto half;
    case V4SImode:
      half_mode = V2SImode;
      goto half;
    half:
      {
	rtvec v;

	/* For V4SF and V4SI, we implement a concat of two V2 vectors.
	   Recurse to load the two halves.  */

	op0 = FUNC14 (half_mode);
	v = FUNC15 (2, FUNC5 (vals, 0, 0), FUNC5 (vals, 0, 1));
	FUNC21 (false, op0, FUNC18 (half_mode, v));

	op1 = FUNC14 (half_mode);
	v = FUNC15 (2, FUNC5 (vals, 0, 2), FUNC5 (vals, 0, 3));
	FUNC21 (false, op1, FUNC18 (half_mode, v));

	use_vec_concat = true;
      }
      break;

    case V8HImode:
    case V16QImode:
    case V4HImode:
    case V8QImode:
      break;

    default:
      FUNC11 ();
    }

  if (use_vec_concat)
    {
      if (!FUNC22 (op0, half_mode))
	op0 = FUNC10 (half_mode, op0);
      if (!FUNC22 (op1, half_mode))
	op1 = FUNC10 (half_mode, op1);

      FUNC7 (FUNC19 (VOIDmode, target,
			      FUNC20 (mode, op0, op1)));
    }
  else
    {
      int i, j, n_elts, n_words, n_elt_per_word;
      enum machine_mode inner_mode;
      rtx words[4], shift;

      inner_mode = FUNC2 (mode);
      n_elts = FUNC3 (mode);
      n_words = FUNC4 (mode) / UNITS_PER_WORD;
      n_elt_per_word = n_elts / n_words;
      shift = FUNC0 (FUNC1 (inner_mode));

      for (i = 0; i < n_words; ++i)
	{
	  rtx word = NULL_RTX;

	  for (j = 0; j < n_elt_per_word; ++j)
	    {
	      rtx elt = FUNC5 (vals, 0, (i+1)*n_elt_per_word - j - 1);
	      elt = FUNC6 (word_mode, inner_mode, elt, true);

	      if (j == 0)
		word = elt;
	      else
		{
		  word = FUNC9 (word_mode, ASHIFT, word, shift,
					      word, 1, OPTAB_LIB_WIDEN);
		  word = FUNC9 (word_mode, IOR, word, elt,
					      word, 1, OPTAB_LIB_WIDEN);
		}
	    }

	  words[i] = word;
	}

      if (n_words == 1)
	FUNC8 (target, FUNC13 (mode, words[0]));
      else if (n_words == 2)
	{
	  rtx tmp = FUNC14 (mode);
	  FUNC7 (FUNC17 (VOIDmode, tmp));
	  FUNC8 (FUNC13 (word_mode, tmp), words[0]);
	  FUNC8 (FUNC12 (word_mode, tmp), words[1]);
	  FUNC8 (target, tmp);
	}
      else if (n_words == 4)
	{
	  rtx tmp = FUNC14 (V4SImode);
	  vals = FUNC18 (V4SImode, FUNC16 (4, words));
	  FUNC23 (false, V4SImode, tmp, vals);
	  FUNC8 (target, FUNC13 (mode, tmp));
	}
      else
	FUNC11 ();
    }
}