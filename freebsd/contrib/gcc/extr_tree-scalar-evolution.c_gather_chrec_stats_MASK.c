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
struct chrec_stats {int /*<<< orphan*/  nb_undetermined; int /*<<< orphan*/  nb_higher_poly; int /*<<< orphan*/  nb_affine_multivar; int /*<<< orphan*/  nb_affine; int /*<<< orphan*/  nb_chrecs; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
#define  POLYNOMIAL_CHREC 128 
 int TDF_STATS ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (tree chrec, struct chrec_stats *stats)
{
  if (dump_file && (dump_flags & TDF_STATS))
    {
      FUNC4 (dump_file, "(classify_chrec ");
      FUNC5 (dump_file, chrec, 0);
      FUNC4 (dump_file, "\n");
    }
  
  stats->nb_chrecs++;
  
  if (chrec == NULL_TREE)
    {
      stats->nb_undetermined++;
      return;
    }
  
  switch (FUNC0 (chrec))
    {
    case POLYNOMIAL_CHREC:
      if (FUNC3 (chrec))
	{
	  if (dump_file && (dump_flags & TDF_STATS))
	    FUNC4 (dump_file, "  affine_univariate\n");
	  stats->nb_affine++;
	}
      else if (FUNC2 (chrec))
	{
	  if (dump_file && (dump_flags & TDF_STATS))
	    FUNC4 (dump_file, "  affine_multivariate\n");
	  stats->nb_affine_multivar++;
	}
      else
	{
	  if (dump_file && (dump_flags & TDF_STATS))
	    FUNC4 (dump_file, "  higher_degree_polynomial\n");
	  stats->nb_higher_poly++;
	}
      
      break;

    default:
      break;
    }
  
  if (FUNC1 (chrec))
    {
      if (dump_file && (dump_flags & TDF_STATS))
	FUNC4 (dump_file, "  undetermined\n");
      stats->nb_undetermined++;
    }
  
  if (dump_file && (dump_flags & TDF_STATS))
    FUNC4 (dump_file, ")\n");
}