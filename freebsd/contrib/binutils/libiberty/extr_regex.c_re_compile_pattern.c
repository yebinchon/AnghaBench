
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_pattern_buffer {int newline_anchor; scalar_t__ no_sub; int regs_allocated; } ;
typedef scalar_t__ reg_errcode_t ;


 int MB_CUR_MAX ;
 int REGS_UNALLOCATED ;
 scalar_t__ byte_regex_compile (char const*,size_t,int ,struct re_pattern_buffer*) ;
 char const* gettext (int ) ;
 int * re_error_msgid ;
 int re_syntax_options ;
 scalar_t__ wcs_regex_compile (char const*,size_t,int ,struct re_pattern_buffer*) ;

const char *
re_compile_pattern (const char *pattern, size_t length,
                    struct re_pattern_buffer *bufp)
{
  reg_errcode_t ret;



  bufp->regs_allocated = REGS_UNALLOCATED;




  bufp->no_sub = 0;


  bufp->newline_anchor = 1;






    ret = byte_regex_compile (pattern, length, re_syntax_options, bufp);

  if (!ret)
    return ((void*)0);
  return gettext (re_error_msgid[(int) ret]);
}
