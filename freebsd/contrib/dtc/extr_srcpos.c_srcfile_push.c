
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcfile_state {int lineno; int colno; struct srcfile_state* prev; int name; int dir; int f; } ;


 scalar_t__ MAX_SRCFILE_DEPTH ;
 struct srcfile_state* current_srcfile ;
 int die (char*) ;
 int get_dirname (int ) ;
 int srcfile_depth ;
 int srcfile_relative_open (char const*,int *) ;
 struct srcfile_state* xmalloc (int) ;

void srcfile_push(const char *fname)
{
 struct srcfile_state *srcfile;

 if (srcfile_depth++ >= MAX_SRCFILE_DEPTH)
  die("Includes nested too deeply");

 srcfile = xmalloc(sizeof(*srcfile));

 srcfile->f = srcfile_relative_open(fname, &srcfile->name);
 srcfile->dir = get_dirname(srcfile->name);
 srcfile->prev = current_srcfile;

 srcfile->lineno = 1;
 srcfile->colno = 1;

 current_srcfile = srcfile;
}
