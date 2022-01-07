
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_handle {char const* fnname; unsigned int name_indx; int block_depth; int vars; int cxx; scalar_t__ fnargcount; int fnargs; int fntype; TYPE_2__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_3__ {int referencep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;


 int FALSE ;
 int TRUE ;
 int abort () ;
 int assert (int) ;
 scalar_t__ ieee_atn_record_enum ;
 scalar_t__ ieee_bb_record_enum ;
 int ieee_buffer_emptyp (int *) ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_define_named_type (struct ieee_handle*,char const*,unsigned int,int ,int,int ,int *) ;
 int ieee_init_buffer (struct ieee_handle*,int *) ;
 scalar_t__ ieee_nn_record ;
 unsigned int ieee_pop_type (struct ieee_handle*) ;
 int ieee_write_2bytes (struct ieee_handle*,int) ;
 int ieee_write_asn (struct ieee_handle*,unsigned int,int) ;
 int ieee_write_atn65 (struct ieee_handle*,unsigned int,char const*) ;
 scalar_t__ ieee_write_byte (struct ieee_handle*,int) ;
 scalar_t__ ieee_write_id (struct ieee_handle*,char const*) ;
 scalar_t__ ieee_write_number (struct ieee_handle*,unsigned int) ;

__attribute__((used)) static bfd_boolean
ieee_start_function (void *p, const char *name, bfd_boolean global)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  bfd_boolean referencep;
  unsigned int retindx, typeindx;

  referencep = info->type_stack->type.referencep;
  retindx = ieee_pop_type (info);





  if (! ieee_buffer_emptyp (&info->fntype))
    {


      abort ();
    }

  info->fnname = name;


  if (! ieee_define_named_type (info, name, (unsigned int) -1, 0, FALSE, TRUE,
    &info->fntype)
      || ! ieee_write_number (info, 'x')
      || ! ieee_write_number (info, 0x40)
      || ! ieee_write_number (info, 0)
      || ! ieee_write_number (info, 0)
      || ! ieee_write_number (info, retindx))
    return FALSE;

  typeindx = ieee_pop_type (info);

  if (! ieee_init_buffer (info, &info->fnargs))
    return FALSE;
  info->fnargcount = 0;



  if (referencep)
    {
      unsigned int nindx;

      nindx = info->name_indx;
      ++info->name_indx;
      if (! ieee_change_buffer (info, &info->cxx)
   || ! ieee_write_byte (info, (int) ieee_nn_record)
   || ! ieee_write_number (info, nindx)
   || ! ieee_write_id (info, "")
   || ! ieee_write_2bytes (info, (int) ieee_atn_record_enum)
   || ! ieee_write_number (info, nindx)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_number (info, 62)
   || ! ieee_write_number (info, 80)
   || ! ieee_write_number (info, 3)
   || ! ieee_write_asn (info, nindx, 'R')
   || ! ieee_write_asn (info, nindx, global ? 0 : 1)
   || ! ieee_write_atn65 (info, nindx, name))
 return FALSE;
    }

  assert (! ieee_buffer_emptyp (&info->vars));
  if (! ieee_change_buffer (info, &info->vars))
    return FALSE;



  ++info->block_depth;

  return (ieee_write_byte (info, (int) ieee_bb_record_enum)
   && ieee_write_byte (info, global ? 4 : 6)
   && ieee_write_number (info, 0)
   && ieee_write_id (info, name)
   && ieee_write_number (info, 0)
   && ieee_write_number (info, typeindx));
}
