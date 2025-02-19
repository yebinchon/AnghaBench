
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ valueT ;
typedef int val ;
typedef int symbolS ;
struct TYPE_6__ {TYPE_2__* line; } ;
struct TYPE_5__ {int line; TYPE_1__* file; } ;
struct TYPE_4__ {char* filename; } ;


 scalar_t__ SEG_NORMAL (scalar_t__) ;
 char* S_GET_NAME (int *) ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_GET_VALUE (int *) ;
 int abort () ;
 scalar_t__ absolute_section ;
 int eject ;
 int fprintf (int ,char*,...) ;
 int list_file ;
 int listing_page (int ) ;
 int on_page ;
 char* segment_name (scalar_t__) ;
 int sprintf (char*,char*,unsigned long) ;
 int sprintf_vma (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 TYPE_3__* symbol_get_frag (int *) ;
 int * symbol_next (int *) ;
 scalar_t__ symbol_section_p (int *) ;
 scalar_t__ undefined_section ;

__attribute__((used)) static void
list_symbol_table (void)
{
  extern symbolS *symbol_rootP;
  int got_some = 0;

  symbolS *ptr;
  eject = 1;
  listing_page (0);

  for (ptr = symbol_rootP; ptr != (symbolS *) ((void*)0); ptr = symbol_next (ptr))
    {
      if (SEG_NORMAL (S_GET_SEGMENT (ptr))
   || S_GET_SEGMENT (ptr) == absolute_section)
 {

   if (symbol_section_p (ptr))
     continue;

   if (S_GET_NAME (ptr))
     {
       char buf[30], fmt[8];
       valueT val = S_GET_VALUE (ptr);



       if (sizeof (val) == 4 && sizeof (int) == 4)
  sprintf (buf, "%08lx", (unsigned long) val);
       else if (sizeof (val) <= sizeof (unsigned long))
  {
    sprintf (fmt, "%%0%lulx",
      (unsigned long) (sizeof (val) * 2));
    sprintf (buf, fmt, (unsigned long) val);
  }




       else
  abort ();

       if (!got_some)
  {
    fprintf (list_file, "DEFINED SYMBOLS\n");
    on_page++;
    got_some = 1;
  }

       if (symbol_get_frag (ptr) && symbol_get_frag (ptr)->line)
  {
    fprintf (list_file, "%20s:%-5d  %s:%s %s\n",
      symbol_get_frag (ptr)->line->file->filename,
      symbol_get_frag (ptr)->line->line,
      segment_name (S_GET_SEGMENT (ptr)),
      buf, S_GET_NAME (ptr));
  }
       else
  {
    fprintf (list_file, "%33s:%s %s\n",
      segment_name (S_GET_SEGMENT (ptr)),
      buf, S_GET_NAME (ptr));
  }

       on_page++;
       listing_page (0);
     }
 }

    }
  if (!got_some)
    {
      fprintf (list_file, "NO DEFINED SYMBOLS\n");
      on_page++;
    }
  fprintf (list_file, "\n");
  on_page++;
  listing_page (0);

  got_some = 0;

  for (ptr = symbol_rootP; ptr != (symbolS *) ((void*)0); ptr = symbol_next (ptr))
    {
      if (S_GET_NAME (ptr) && strlen (S_GET_NAME (ptr)) != 0)
 {
   if (S_GET_SEGMENT (ptr) == undefined_section)
     {
       if (!got_some)
  {
    got_some = 1;
    fprintf (list_file, "UNDEFINED SYMBOLS\n");
    on_page++;
    listing_page (0);
  }
       fprintf (list_file, "%s\n", S_GET_NAME (ptr));
       on_page++;
       listing_page (0);
     }
 }
    }
  if (!got_some)
    {
      fprintf (list_file, "NO UNDEFINED SYMBOLS\n");
      on_page++;
      listing_page (0);
    }
}
