
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char uchar ;
typedef int cppchar_t ;
struct TYPE_4__ {int hash_table; } ;
typedef TYPE_1__ cpp_reader ;
typedef int cpp_hashnode ;


 int CPP_DL_ERROR ;
 int * CPP_HASHNODE (int ) ;
 int HT_ALLOC ;
 scalar_t__ ISXDIGIT (char const) ;
 scalar_t__ alloca (size_t) ;
 int cpp_errno (TYPE_1__*,int ,char*) ;
 int errno ;
 int hex_value (char const) ;
 int ht_lookup (int ,char*,int,int ) ;
 int one_cppchar_to_utf8 (int,char**,size_t*) ;

cpp_hashnode *
_cpp_interpret_identifier (cpp_reader *pfile, const uchar *id, size_t len)
{


  uchar * buf = (uchar *) alloca (len + 1);
  uchar * bufp = buf;
  size_t idp;

  for (idp = 0; idp < len; idp++)
    if (id[idp] != '\\')
      *bufp++ = id[idp];
    else
      {
 unsigned length = id[idp+1] == 'u' ? 4 : 8;
 cppchar_t value = 0;
 size_t bufleft = len - (bufp - buf);
 int rval;

 idp += 2;
 while (length && idp < len && ISXDIGIT (id[idp]))
   {
     value = (value << 4) + hex_value (id[idp]);
     idp++;
     length--;
   }
 idp--;



 if (value == 0x24)
   {
     *bufp++ = '$';
     continue;
   }

 rval = one_cppchar_to_utf8 (value, &bufp, &bufleft);
 if (rval)
   {
     errno = rval;
     cpp_errno (pfile, CPP_DL_ERROR,
         "converting UCN to source character set");
     break;
   }
      }

  return CPP_HASHNODE (ht_lookup (pfile->hash_table,
      buf, bufp - buf, HT_ALLOC));
}
