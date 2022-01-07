
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cpp_strbuf {size_t len; size_t asize; size_t* text; } ;
typedef size_t cppchar_t ;
typedef int cpp_reader ;


 void* CPP_OPTION (int *,int ) ;
 scalar_t__ OUTBUF_BLOCK_SIZE ;
 void* XRESIZEVEC (int ,size_t*,size_t) ;
 int bytes_big_endian ;
 int char_precision ;
 int uchar ;
 int wchar_precision ;
 size_t width_to_mask (size_t) ;

__attribute__((used)) static void
emit_numeric_escape (cpp_reader *pfile, cppchar_t n,
       struct _cpp_strbuf *tbuf, bool wide)
{
  if (wide)
    {


      bool bigend = CPP_OPTION (pfile, bytes_big_endian);
      size_t width = CPP_OPTION (pfile, wchar_precision);
      size_t cwidth = CPP_OPTION (pfile, char_precision);
      size_t cmask = width_to_mask (cwidth);
      size_t nbwc = width / cwidth;
      size_t i;
      size_t off = tbuf->len;
      cppchar_t c;

      if (tbuf->len + nbwc > tbuf->asize)
 {
   tbuf->asize += OUTBUF_BLOCK_SIZE;
   tbuf->text = XRESIZEVEC (uchar, tbuf->text, tbuf->asize);
 }

      for (i = 0; i < nbwc; i++)
 {
   c = n & cmask;
   n >>= cwidth;
   tbuf->text[off + (bigend ? nbwc - i - 1 : i)] = c;
 }
      tbuf->len += nbwc;
    }
  else
    {


      if (tbuf->len + 1 > tbuf->asize)
 {
   tbuf->asize += OUTBUF_BLOCK_SIZE;
   tbuf->text = XRESIZEVEC (uchar, tbuf->text, tbuf->asize);
 }
      tbuf->text[tbuf->len++] = n;
    }
}
