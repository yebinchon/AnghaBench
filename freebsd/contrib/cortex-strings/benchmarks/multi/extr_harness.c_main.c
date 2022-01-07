
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* stub_t ) (char*,char*,int) ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct test {char* name; int (* stub ) (char*,char*,int) ;} ;


 int CLOCK_PROCESS_CPUTIME_ID ;
 int MAX_ALIGNMENT ;
 int MIN_BUFFER_SIZE ;
 int assert (int) ;
 int clock_gettime (int ,struct timespec*) ;
 int empty (char*) ;
 struct test* find_test (char const*) ;
 int getopt (int,char**,char*) ;
 char* malloc (size_t) ;
 int optarg ;
 int parse_alignment_arg (int ,char*,int*,int*) ;
 int parse_int_arg (int ,char*) ;
 int printf (char*,char*,char*,int,int,int,int,char const*,double,double,int,char*,int,double) ;
 scalar_t__ random () ;
 char* realign (char*,int) ;
 int srandom (int) ;
 char* strdup (int ) ;
 char* strrchr (char*,char) ;
 char* strstr (char*,char*) ;
 int stub1 (char*,char*,int) ;
 int stub2 (char*,char*,int) ;
 int usage (char*) ;

int main(int argc, char **argv)
{

  size_t buffer_size = MIN_BUFFER_SIZE;


  int count = 31;

  int loops = 10000000;

  int flush = 0;

  const char *name = ((void*)0);

  int src_alignment = 8;
  int dst_alignment = 8;

  const char *run_id = "0";

  int opt;

  while ((opt = getopt(argc, argv, "c:l:ft:r:hva:")) > 0)
    {
      switch (opt)
 {
 case 'c':
          count = parse_int_arg(optarg, argv[0]);
          break;
 case 'l':
          loops = parse_int_arg(optarg, argv[0]);
          break;
 case 'a':
          parse_alignment_arg(optarg, argv[0], &src_alignment, &dst_alignment);
          break;
 case 'f':
          flush = 1;
          break;
 case 't':
          name = strdup(optarg);
          break;
 case 'r':
          run_id = strdup(optarg);
          break;
 case 'h':
          usage(argv[0]);
          break;
 default:
          usage(argv[0]);
          break;
 }
    }


  const struct test *ptest = find_test(name);

  if (ptest == ((void*)0))
    {
      usage(argv[0]);
    }

  if (count + MAX_ALIGNMENT * 2 > MIN_BUFFER_SIZE)
    {
      buffer_size = count + MAX_ALIGNMENT * 2;
    }


  char *src = malloc(buffer_size);
  char *dest = malloc(buffer_size);

  assert(src != ((void*)0) && dest != ((void*)0));

  src = realign(src, src_alignment);
  dest = realign(dest, dst_alignment);


  srandom(1539);

  for (int i = 0; i < buffer_size; i++)
    {
      src[i] = (char)random() | 1;
      dest[i] = src[i];
    }


  src[count] = 0;
  dest[count] = 0;

  struct timespec start, end;
  int err = clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
  assert(err == 0);


  stub_t stub = ptest->stub;


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
   empty(dest);
 }
    }

  err = clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);
  assert(err == 0);


  char *variant = strrchr(argv[0], '/');

  if (variant == ((void*)0))
    {
      variant = argv[0];
    }

  variant = strstr(variant, "try-");
  assert(variant != ((void*)0));

  double elapsed = (end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) * 1e-9;

  double bounced = 0.448730 * loops / 50000000;


  printf("%s:%s:%u:%u:%d:%d:%s:%.6f: took %.6f s for %u calls to %s of %u bytes.  ~%.3f MB/s corrected.\n",
         variant + 4, ptest->name,
  count, loops, src_alignment, dst_alignment, run_id,
  elapsed,
         elapsed, loops, ptest->name, count,
         (double)loops*count/(elapsed - bounced)/(1024*1024));

  return 0;
}
