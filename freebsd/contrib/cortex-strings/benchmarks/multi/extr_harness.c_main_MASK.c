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
typedef  int /*<<< orphan*/  (* stub_t ) (char*,char*,int) ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct test {char* name; int /*<<< orphan*/  (* stub ) (char*,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_PROCESS_CPUTIME_ID ; 
 int MAX_ALIGNMENT ; 
 int MIN_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct test* FUNC3 (char const*) ; 
 int FUNC4 (int,char**,char*) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,int,int,int,int,char const*,double,double,int,char*,int,double) ; 
 scalar_t__ FUNC9 () ; 
 char* FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*,char) ; 
 char* FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

int FUNC18(int argc, char **argv)
{
  /* Size of src and dest buffers */
  size_t buffer_size = MIN_BUFFER_SIZE;

  /* Number of bytes per call */
  int count = 31;
  /* Number of times to run */
  int loops = 10000000;
  /* True to flush the cache each time */
  int flush = 0;
  /* Name of the test */
  const char *name = NULL;
  /* Alignment of buffers */
  int src_alignment = 8;
  int dst_alignment = 8;
  /* Name of the run */
  const char *run_id = "0";

  int opt;

  while ((opt = FUNC4(argc, argv, "c:l:ft:r:hva:")) > 0)
    {
      switch (opt)
	{
	case 'c':
          count = FUNC7(optarg, argv[0]);
          break;
	case 'l':
          loops = FUNC7(optarg, argv[0]);
          break;
	case 'a':
          FUNC6(optarg, argv[0], &src_alignment, &dst_alignment);
          break;
	case 'f':
          flush = 1;
          break;
	case 't':
          name = FUNC12(optarg);
          break;
	case 'r':
          run_id = FUNC12(optarg);
          break;
	case 'h':
          FUNC17(argv[0]);
          break;
	default:
          FUNC17(argv[0]);
          break;
	}
    }

  /* Find the test by name */
  const struct test *ptest = FUNC3(name);

  if (ptest == NULL)
    {
      FUNC17(argv[0]);
    }

  if (count + MAX_ALIGNMENT * 2 > MIN_BUFFER_SIZE)
    {
      buffer_size = count + MAX_ALIGNMENT * 2;
    }

  /* Buffers to read and write from */
  char *src = FUNC5(buffer_size);
  char *dest = FUNC5(buffer_size);

  FUNC0(src != NULL && dest != NULL);

  src = FUNC10(src, src_alignment);
  dest = FUNC10(dest, dst_alignment);

  /* Fill the buffer with non-zero, reproducable random data */
  FUNC11(1539);

  for (int i = 0; i < buffer_size; i++)
    {
      src[i] = (char)FUNC9() | 1;
      dest[i] = src[i];
    }

  /* Make sure the buffers are null terminated for any string tests */
  src[count] = 0;
  dest[count] = 0;

  struct timespec start, end;
  int err = FUNC1(CLOCK_PROCESS_CPUTIME_ID, &start);
  FUNC0(err == 0);

  /* Preload */
  stub_t stub = ptest->stub;

  /* Run two variants to reduce the cost of testing for the flush */
  if (flush == 0)
    {
      for (int i = 0; i < loops; i++)
	{
	  (*stub)(dest, src, count);
	}
    }
  else
    {
      for (int i = 0; i < loops; i++)
	{
	  (*stub)(dest, src, count);
	  FUNC2(dest);
	}
    }

  err = FUNC1(CLOCK_PROCESS_CPUTIME_ID, &end);
  FUNC0(err == 0);

  /* Drop any leading path and pull the variant name out of the executable */
  char *variant = FUNC13(argv[0], '/');

  if (variant == NULL)
    {
      variant = argv[0];
    }

  variant = FUNC14(variant, "try-");
  FUNC0(variant != NULL);

  double elapsed = (end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) * 1e-9;
  /* Estimate the bounce time.  Measured on a Panda. */
  double bounced = 0.448730 * loops / 50000000;

  /* Dump both machine and human readable versions */
  FUNC8("%s:%s:%u:%u:%d:%d:%s:%.6f: took %.6f s for %u calls to %s of %u bytes.  ~%.3f MB/s corrected.\n", 
         variant + 4, ptest->name,
	 count, loops, src_alignment, dst_alignment, run_id,
	 elapsed,
         elapsed, loops, ptest->name, count,
         (double)loops*count/(elapsed - bounced)/(1024*1024));

  return 0;
}