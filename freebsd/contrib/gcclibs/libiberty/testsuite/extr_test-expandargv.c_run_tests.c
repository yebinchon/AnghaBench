
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** dupargv (char**) ;
 int erase_test (int) ;
 int expandargv (int*,char***) ;
 int freeargv (char**) ;
 int printf (char*,int) ;
 int run_replaces (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int writeout_test (int,char const*) ;

int
run_tests (const char **test_data)
{
  int argc_after, argc_before;
  char ** argv_before, ** argv_after;
  int i, j, k, fails, failed;

  i = j = fails = 0;

  while (test_data[j])
    {

      writeout_test (i, test_data[j++]);

      argv_before = dupargv ((char **) &test_data[j]);


      argc_before = 0;
      argc_after = 0;
      while (test_data[j + argc_before])
        argc_before++;
      j += argc_before + 1;
      while (test_data[j + argc_after])
        argc_after++;


      argv_after = dupargv ((char **) &test_data[j]);


      for (k = 0; k < argc_before; k++)
        run_replaces (argv_before[k]);
      for (k = 0; k < argc_after; k++)
        run_replaces (argv_after[k]);


      expandargv (&argc_before, &argv_before);

      failed = 0;

      if (argc_before != argc_after)
        {
          printf ("FAIL: test-expandargv-%d. Number of arguments don't match.\n", i);
   failed++;
        }

      else
        for (k = 0; k < argc_after; k++)
          if (strncmp (argv_before[k], argv_after[k], strlen(argv_after[k])) != 0)
            {
              printf ("FAIL: test-expandargv-%d. Arguments don't match.\n", i);
              failed++;
            }

      if (!failed)
        printf ("PASS: test-expandargv-%d.\n", i);
      else
        fails++;

      freeargv (argv_before);
      freeargv (argv_after);

      j += argc_after + 1;

      erase_test (i);
      i++;
    }
  return fails;
}
