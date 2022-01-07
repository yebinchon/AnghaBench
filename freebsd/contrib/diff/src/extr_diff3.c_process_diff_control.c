
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_block {int ** ranges; } ;
typedef enum diff_type { ____Placeholder_diff_type } diff_type ;


 int ADD ;
 int CHANGE ;
 int DELETE ;
 int ERROR ;
 size_t RANGE_END ;
 size_t RANGE_START ;
 char* readnum (char*,int *) ;
 char* skipwhite (char*) ;

__attribute__((used)) static enum diff_type
process_diff_control (char **string, struct diff_block *db)
{
  char *s = *string;
  enum diff_type type;


  s = readnum (skipwhite (s), &db->ranges[0][RANGE_START]);
  if (! s)
    return ERROR;


  s = skipwhite (s);
  if (*s == ',')
    {
      s = readnum (s + 1, &db->ranges[0][RANGE_END]);
      if (! s)
 return ERROR;
    }
  else
    db->ranges[0][RANGE_END] = db->ranges[0][RANGE_START];


  s = skipwhite (s);
  switch (*s)
    {
    case 'a':
      type = ADD;
      break;
    case 'c':
      type = CHANGE;
      break;
    case 'd':
      type = DELETE;
      break;
    default:
      return ERROR;
    }
  s++;


  s = readnum (skipwhite (s), &db->ranges[1][RANGE_START]);
  if (! s)
    return ERROR;


  s = skipwhite (s);
  if (*s == ',')
    {
      s = readnum (s + 1, &db->ranges[1][RANGE_END]);
      if (! s)
 return ERROR;
      s = skipwhite (s);
    }
  else
    db->ranges[1][RANGE_END] = db->ranges[1][RANGE_START];

  *string = s;
  return type;
}
