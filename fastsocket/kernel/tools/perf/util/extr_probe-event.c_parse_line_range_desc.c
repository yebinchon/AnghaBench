
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_range {char* file; char* function; int end; int start; } ;


 int EINVAL ;
 int ENOMEM ;
 int INT_MAX ;
 int free (char*) ;
 int parse_line_num (char**,int *,char*) ;
 int pr_debug (char*,int ,int ) ;
 int semantic_error (char*,...) ;
 char* strchr (char*,char) ;
 void* strdup (char const*) ;

int parse_line_range_desc(const char *arg, struct line_range *lr)
{
 char *range, *file, *name = strdup(arg);
 int err;

 if (!name)
  return -ENOMEM;

 lr->start = 0;
 lr->end = INT_MAX;

 range = strchr(name, ':');
 if (range) {
  *range++ = '\0';

  err = parse_line_num(&range, &lr->start, "start line");
  if (err)
   goto err;

  if (*range == '+' || *range == '-') {
   const char c = *range++;

   err = parse_line_num(&range, &lr->end, "end line");
   if (err)
    goto err;

   if (c == '+') {
    lr->end += lr->start;






    lr->end--;
   }
  }

  pr_debug("Line range is %d to %d\n", lr->start, lr->end);

  err = -EINVAL;
  if (lr->start > lr->end) {
   semantic_error("Start line must be smaller"
           " than end line.\n");
   goto err;
  }
  if (*range != '\0') {
   semantic_error("Tailing with invalid str '%s'.\n", range);
   goto err;
  }
 }

 file = strchr(name, '@');
 if (file) {
  *file = '\0';
  lr->file = strdup(++file);
  if (lr->file == ((void*)0)) {
   err = -ENOMEM;
   goto err;
  }
  lr->function = name;
 } else if (strchr(name, '.'))
  lr->file = name;
 else
  lr->function = name;

 return 0;
err:
 free(name);
 return err;
}
