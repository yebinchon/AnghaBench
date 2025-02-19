
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct property {int dummy; } ;
struct inbuf {int dummy; } ;
struct data {int dummy; } ;


 int FTF_VARALIGN ;
 struct property* build_property (char*,struct data,int *) ;
 struct data flat_read_data (struct inbuf*,int) ;
 char* flat_read_stringtable (struct inbuf*,int) ;
 int flat_read_word (struct inbuf*) ;
 int flat_realign (struct inbuf*,int) ;

__attribute__((used)) static struct property *flat_read_property(struct inbuf *dtbuf,
        struct inbuf *strbuf, int flags)
{
 uint32_t proplen, stroff;
 char *name;
 struct data val;

 proplen = flat_read_word(dtbuf);
 stroff = flat_read_word(dtbuf);

 name = flat_read_stringtable(strbuf, stroff);

 if ((flags & FTF_VARALIGN) && (proplen >= 8))
  flat_realign(dtbuf, 8);

 val = flat_read_data(dtbuf, proplen);

 return build_property(name, val, ((void*)0));
}
