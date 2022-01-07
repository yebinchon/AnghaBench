
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; } ;
struct generic_link_hash_entry {TYPE_5__* sym; TYPE_1__ root; } ;
struct bfd_link_info {TYPE_2__* hash; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_14__ {scalar_t__ xvec; } ;
typedef TYPE_4__ bfd ;
struct TYPE_13__ {struct generic_link_hash_entry* p; } ;
struct TYPE_15__ {int flags; TYPE_3__ udata; int value; int section; } ;
typedef TYPE_5__ asymbol ;
struct TYPE_12__ {scalar_t__ creator; } ;


 int BSF_CONSTRUCTOR ;
 int BSF_GLOBAL ;
 int BSF_INDIRECT ;
 int BSF_OLD_COMMON ;
 int BSF_WARNING ;
 int BSF_WEAK ;
 int FALSE ;
 int TRUE ;
 int _bfd_generic_link_add_one_symbol (struct bfd_link_info*,TYPE_4__*,char const*,int,int ,int ,char const*,int ,int ,struct bfd_link_hash_entry**) ;
 char* bfd_asymbol_name (TYPE_5__*) ;
 int bfd_get_section (TYPE_5__*) ;
 scalar_t__ bfd_is_com_section (int ) ;
 scalar_t__ bfd_is_ind_section (int ) ;
 scalar_t__ bfd_is_und_section (int ) ;
 scalar_t__ bfd_link_hash_new ;

__attribute__((used)) static bfd_boolean
generic_link_add_symbol_list (bfd *abfd,
         struct bfd_link_info *info,
         bfd_size_type symbol_count,
         asymbol **symbols,
         bfd_boolean collect)
{
  asymbol **pp, **ppend;

  pp = symbols;
  ppend = symbols + symbol_count;
  for (; pp < ppend; pp++)
    {
      asymbol *p;

      p = *pp;

      if ((p->flags & (BSF_INDIRECT
         | BSF_WARNING
         | BSF_GLOBAL
         | BSF_CONSTRUCTOR
         | BSF_WEAK)) != 0
   || bfd_is_und_section (bfd_get_section (p))
   || bfd_is_com_section (bfd_get_section (p))
   || bfd_is_ind_section (bfd_get_section (p)))
 {
   const char *name;
   const char *string;
   struct generic_link_hash_entry *h;
   struct bfd_link_hash_entry *bh;

   name = bfd_asymbol_name (p);
   if (((p->flags & BSF_INDIRECT) != 0
        || bfd_is_ind_section (p->section))
       && pp + 1 < ppend)
     {
       pp++;
       string = bfd_asymbol_name (*pp);
     }
   else if ((p->flags & BSF_WARNING) != 0
     && pp + 1 < ppend)
     {


       string = name;
       pp++;
       name = bfd_asymbol_name (*pp);
     }
   else
     string = ((void*)0);

   bh = ((void*)0);
   if (! (_bfd_generic_link_add_one_symbol
   (info, abfd, name, p->flags, bfd_get_section (p),
    p->value, string, FALSE, collect, &bh)))
     return FALSE;
   h = (struct generic_link_hash_entry *) bh;





   if ((p->flags & BSF_CONSTRUCTOR) != 0
       && (h == ((void*)0) || h->root.type == bfd_link_hash_new))
     {
       p->udata.p = ((void*)0);
       continue;
     }
   if (info->hash->creator == abfd->xvec)
     {
       if (h->sym == ((void*)0)
    || (! bfd_is_und_section (bfd_get_section (p))
        && (! bfd_is_com_section (bfd_get_section (p))
     || bfd_is_und_section (bfd_get_section (h->sym)))))
  {
    h->sym = p;



    if (bfd_is_com_section (bfd_get_section (p)))
      p->flags |= BSF_OLD_COMMON;
  }
     }






   p->udata.p = h;
 }
    }

  return TRUE;
}
