
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef char uchar ;
typedef int time_t ;
struct tm {size_t tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_year; } ;
struct stat {int st_mtime; } ;
struct line_map {char* to_file; } ;
struct _cpp_file {int dummy; } ;
struct TYPE_22__ {int in_directive; } ;
struct TYPE_23__ {char* date; char* time; int counter; TYPE_3__ state; TYPE_1__* cur_token; TYPE_7__* line_table; } ;
typedef TYPE_4__ cpp_reader ;
struct TYPE_21__ {int builtin; } ;
struct TYPE_24__ {TYPE_2__ value; } ;
typedef TYPE_5__ cpp_hashnode ;
struct TYPE_25__ {unsigned char* timestamp; } ;
typedef TYPE_6__ cpp_buffer ;
struct TYPE_26__ {unsigned int highest_line; int used; struct line_map* maps; int depth; } ;
struct TYPE_20__ {unsigned int src_loc; } ;
 int CPP_DL_ERROR ;
 int CPP_DL_ICE ;
 int CPP_DL_WARNING ;
 int CPP_OPTION (TYPE_4__*,int ) ;
 struct line_map* INCLUDED_FROM (TYPE_7__*,struct line_map const*) ;
 int MAIN_FILE_P (struct line_map const*) ;
 int NODE_NAME (TYPE_5__*) ;
 unsigned int SOURCE_LINE (struct line_map const*,unsigned int) ;
 struct stat* _cpp_get_file_stat (struct _cpp_file*) ;
 void* _cpp_unaligned_alloc (TYPE_4__*,int) ;
 char* asctime (struct tm*) ;
 int cpp_errno (TYPE_4__*,int ,char*) ;
 int cpp_error (TYPE_4__*,int ,char*,...) ;
 TYPE_6__* cpp_get_buffer (TYPE_4__*) ;
 struct _cpp_file* cpp_get_file (TYPE_6__*) ;
 int cpp_in_system_header (TYPE_4__*) ;
 char* cpp_quote_string (char*,unsigned char const*,unsigned int) ;
 int directives_only ;
 int errno ;
 struct line_map* linemap_lookup (TYPE_7__*,unsigned int) ;
 struct tm* localtime (int *) ;
 char** monthnames ;
 int sprintf (char*,char*,...) ;
 int strcpy (char*,char*) ;
 void* strlen (char const*) ;
 int time (int *) ;
 int traditional ;

const uchar *
_cpp_builtin_macro_text (cpp_reader *pfile, cpp_hashnode *node)
{
  const struct line_map *map;
  const uchar *result = ((void*)0);
  unsigned int number = 1;

  switch (node->value.builtin)
    {
    default:
      cpp_error (pfile, CPP_DL_ICE, "invalid built-in macro \"%s\"",
   NODE_NAME (node));
      break;

    case 128:
      {
 cpp_buffer *pbuffer = cpp_get_buffer (pfile);
 if (pbuffer->timestamp == ((void*)0))
   {

            struct _cpp_file *file = cpp_get_file (pbuffer);
     if (file)
       {




  struct tm *tb = ((void*)0);
  struct stat *st = _cpp_get_file_stat (file);
  if (st)
    tb = localtime (&st->st_mtime);
  if (tb)
    {
      char *str = asctime (tb);
      size_t len = strlen (str);
      unsigned char *buf = _cpp_unaligned_alloc (pfile, len + 2);
      buf[0] = '"';
      strcpy ((char *) buf + 1, str);
      buf[len] = '"';
      pbuffer->timestamp = buf;
    }
  else
    {
      cpp_errno (pfile, CPP_DL_WARNING,
   "could not determine file timestamp");
      pbuffer->timestamp = U"\"??? ??? ?? ??:??:?? ????\"";
    }
       }
   }
 result = pbuffer->timestamp;
      }
      break;
    case 133:
    case 136:
      {
 unsigned int len;
 const char *name;
 uchar *buf;
 map = linemap_lookup (pfile->line_table, pfile->line_table->highest_line);

 if (node->value.builtin == 136)
   while (! MAIN_FILE_P (map))
     map = INCLUDED_FROM (pfile->line_table, map);

 name = map->to_file;
 len = strlen (name);
 buf = _cpp_unaligned_alloc (pfile, len * 2 + 3);
 result = buf;
 *buf = '"';
 buf = cpp_quote_string (buf + 1, (const unsigned char *) name, len);
 *buf++ = '"';
 *buf = '\0';
      }
      break;

    case 132:



      number = pfile->line_table->depth - 1;
      break;

    case 131:
      map = &pfile->line_table->maps[pfile->line_table->used-1];



      if (CPP_OPTION (pfile, traditional))
 number = pfile->line_table->highest_line;
      else
 number = pfile->cur_token[-1].src_loc;
      number = SOURCE_LINE (map, number);
      break;






    case 130:
      if (cpp_in_system_header (pfile))
 number = 0;
      else
 number = 1;
      break;

    case 134:
    case 129:
      if (pfile->date == ((void*)0))
 {




   time_t tt;
   struct tm *tb = ((void*)0);




   errno = 0;
   tt = time(((void*)0));
   if (tt != (time_t)-1 || errno == 0)
     tb = localtime (&tt);

   if (tb)
     {
       pfile->date = _cpp_unaligned_alloc (pfile,
        sizeof ("\"Oct 11 1347\""));
       sprintf ((char *) pfile->date, "\"%s %2d %4d\"",
         monthnames[tb->tm_mon], tb->tm_mday,
         tb->tm_year + 1900);

       pfile->time = _cpp_unaligned_alloc (pfile,
        sizeof ("\"12:34:56\""));
       sprintf ((char *) pfile->time, "\"%02d:%02d:%02d\"",
         tb->tm_hour, tb->tm_min, tb->tm_sec);
     }
   else
     {
       cpp_errno (pfile, CPP_DL_WARNING,
    "could not determine date and time");

       pfile->date = U"\"??? ?? ????\"";
       pfile->time = U"\"??:??:??\"";
     }
 }

      if (node->value.builtin == 134)
 result = pfile->date;
      else
 result = pfile->time;
      break;

    case 135:
      if (CPP_OPTION (pfile, directives_only) && pfile->state.in_directive)
 cpp_error (pfile, CPP_DL_ERROR,
     "__COUNTER__ expanded inside directive with -fdirectives-only");
      number = pfile->counter++;
      break;
    }

  if (result == ((void*)0))
    {

      result = _cpp_unaligned_alloc (pfile, 21);
      sprintf ((char *) result, "%u", number);
    }

  return result;
}
