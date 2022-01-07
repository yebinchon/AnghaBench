
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function_info {unsigned int ident; unsigned int checksum; unsigned int num_counts; int * counts; int name; struct function_info* next; } ;
typedef struct function_info function_t ;


 int GCOV_COUNTER_ARCS ;
 int GCOV_DATA_MAGIC ;
 unsigned int GCOV_TAG_COUNTER_LENGTH (unsigned int) ;
 unsigned int GCOV_TAG_FOR_COUNTER (int ) ;
 unsigned int GCOV_TAG_FUNCTION ;
 unsigned int GCOV_TAG_OBJECT_SUMMARY ;
 unsigned int GCOV_TAG_PROGRAM_SUMMARY ;
 int GCOV_UNSIGNED2STRING (char*,unsigned int) ;
 unsigned int GCOV_VERSION ;
 int * XCNEWVEC (int ,unsigned int) ;
 unsigned int bbg_stamp ;
 int da_file_name ;
 int fnotice (int ,char*,int ,...) ;
 struct function_info* functions ;
 int gcov_close () ;
 int gcov_is_error () ;
 int gcov_magic (unsigned int,int ) ;
 int gcov_open (int ,int) ;
 unsigned long gcov_position () ;
 scalar_t__ gcov_read_counter () ;
 int gcov_read_summary (int *) ;
 unsigned int gcov_read_unsigned () ;
 int gcov_sync (unsigned long,unsigned int) ;
 int gcov_type ;
 int no_data_file ;
 int object_summary ;
 int program_count ;
 int stderr ;

__attribute__((used)) static int
read_count_file (void)
{
  unsigned ix;
  unsigned version;
  unsigned tag;
  function_t *fn = ((void*)0);
  int error = 0;

  if (!gcov_open (da_file_name, 1))
    {
      fnotice (stderr, "%s:cannot open data file, assuming not executed\n",
        da_file_name);
      no_data_file = 1;
      return 0;
    }
  if (!gcov_magic (gcov_read_unsigned (), GCOV_DATA_MAGIC))
    {
      fnotice (stderr, "%s:not a gcov data file\n", da_file_name);
    cleanup:;
      gcov_close ();
      return 1;
    }
  version = gcov_read_unsigned ();
  if (version != GCOV_VERSION)
    {
      char v[4], e[4];

      GCOV_UNSIGNED2STRING (v, version);
      GCOV_UNSIGNED2STRING (e, GCOV_VERSION);

      fnotice (stderr, "%s:version '%.4s', prefer version '%.4s'\n",
        da_file_name, v, e);
    }
  tag = gcov_read_unsigned ();
  if (tag != bbg_stamp)
    {
      fnotice (stderr, "%s:stamp mismatch with graph file\n", da_file_name);
      goto cleanup;
    }

  while ((tag = gcov_read_unsigned ()))
    {
      unsigned length = gcov_read_unsigned ();
      unsigned long base = gcov_position ();

      if (tag == GCOV_TAG_OBJECT_SUMMARY)
 gcov_read_summary (&object_summary);
      else if (tag == GCOV_TAG_PROGRAM_SUMMARY)
 program_count++;
      else if (tag == GCOV_TAG_FUNCTION)
 {
   unsigned ident = gcov_read_unsigned ();
   struct function_info *fn_n = functions;

   for (fn = fn ? fn->next : ((void*)0); ; fn = fn->next)
     {
       if (fn)
  ;
       else if ((fn = fn_n))
  fn_n = ((void*)0);
       else
  {
    fnotice (stderr, "%s:unknown function '%u'\n",
      da_file_name, ident);
    break;
  }
       if (fn->ident == ident)
  break;
     }

   if (!fn)
     ;
   else if (gcov_read_unsigned () != fn->checksum)
     {
     mismatch:;
       fnotice (stderr, "%s:profile mismatch for '%s'\n",
         da_file_name, fn->name);
       goto cleanup;
     }
 }
      else if (tag == GCOV_TAG_FOR_COUNTER (GCOV_COUNTER_ARCS) && fn)
 {
   if (length != GCOV_TAG_COUNTER_LENGTH (fn->num_counts))
     goto mismatch;

   if (!fn->counts)
     fn->counts = XCNEWVEC (gcov_type, fn->num_counts);

   for (ix = 0; ix != fn->num_counts; ix++)
     fn->counts[ix] += gcov_read_counter ();
 }
      gcov_sync (base, length);
      if ((error = gcov_is_error ()))
 {
   fnotice (stderr, error < 0 ? "%s:overflowed\n" : "%s:corrupted\n",
     da_file_name);
   goto cleanup;
 }
    }

  gcov_close ();
  return 0;
}
