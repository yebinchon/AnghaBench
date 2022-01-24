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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short*) ; 
 char* FUNC1 (char*) ; 
 unsigned short* gomp_cpu_affinity ; 
 size_t gomp_cpu_affinity_len ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned short* FUNC3 (unsigned short*,size_t) ; 
 unsigned long FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (void)
{
  char *env, *end;
  unsigned long cpu_beg, cpu_end, cpu_stride;
  unsigned short *cpus = NULL;
  size_t allocated = 0, used = 0, needed;

  env = FUNC1 ("GOMP_CPU_AFFINITY");
  if (env == NULL)
    return false;

  do
    {
      while (*env == ' ' || *env == '\t')
	env++;

      cpu_beg = FUNC4 (env, &end, 0);
      cpu_end = cpu_beg;
      cpu_stride = 1;
      if (env == end || cpu_beg >= 65536)
	goto invalid;

      env = end;
      if (*env == '-')
	{
	  cpu_end = FUNC4 (++env, &end, 0);
	  if (env == end || cpu_end >= 65536 || cpu_end < cpu_beg)
	    goto invalid;

	  env = end;
	  if (*env == ':')
	    {
	      cpu_stride = FUNC4 (++env, &end, 0);
	      if (env == end || cpu_stride == 0 || cpu_stride >= 65536)
		goto invalid;

	      env = end;
	    }
	}

      needed = (cpu_end - cpu_beg) / cpu_stride + 1;
      if (used + needed >= allocated)
	{
	  unsigned short *new_cpus;

	  if (allocated < 64)
	    allocated = 64;
	  if (allocated > needed)
	    allocated <<= 1;
	  else
	    allocated += 2 * needed;
	  new_cpus = FUNC3 (cpus, allocated * sizeof (unsigned short));
	  if (new_cpus == NULL)
	    {
	      FUNC0 (cpus);
	      FUNC2 ("not enough memory to store GOMP_CPU_AFFINITY list");
	      return false;
	    }

	  cpus = new_cpus;
	}

      while (needed--)
	{
	  cpus[used++] = cpu_beg;
	  cpu_beg += cpu_stride;
	}

      while (*env == ' ' || *env == '\t')
	env++;

      if (*env == ',')
	env++;
      else if (*env == '\0')
	break;
    }
  while (1);

  gomp_cpu_affinity = cpus;
  gomp_cpu_affinity_len = used;
  return true;

 invalid:
  FUNC2 ("Invalid value for enviroment variable GOMP_CPU_AFFINITY");
  return false;
}