
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int target; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_11__ {int type; } ;
struct TYPE_13__ {TYPE_1__ target_statement; TYPE_3__ output_statement; TYPE_2__ header; } ;
typedef TYPE_4__ lang_statement_union_type ;
struct TYPE_16__ {int text_read_only; int magic_demand_paged; } ;
struct TYPE_15__ {int traditional_format; int relocatable; } ;
struct TYPE_14__ {int flags; } ;


 int ASSERT (int ) ;
 int BFD_TRADITIONAL_FORMAT ;
 int D_PAGED ;
 int WP_TEXT ;
 TYPE_9__ config ;
 int current_target ;


 int ldemul_set_output_arch () ;
 TYPE_7__ link_info ;
 TYPE_5__* open_output (int ) ;
 TYPE_5__* output_bfd ;

__attribute__((used)) static void
ldlang_open_output (lang_statement_union_type *statement)
{
  switch (statement->header.type)
    {
    case 129:
      ASSERT (output_bfd == ((void*)0));
      output_bfd = open_output (statement->output_statement.name);
      ldemul_set_output_arch ();
      if (config.magic_demand_paged && !link_info.relocatable)
 output_bfd->flags |= D_PAGED;
      else
 output_bfd->flags &= ~D_PAGED;
      if (config.text_read_only)
 output_bfd->flags |= WP_TEXT;
      else
 output_bfd->flags &= ~WP_TEXT;
      if (link_info.traditional_format)
 output_bfd->flags |= BFD_TRADITIONAL_FORMAT;
      else
 output_bfd->flags &= ~BFD_TRADITIONAL_FORMAT;
      break;

    case 128:
      current_target = statement->target_statement.target;
      break;
    default:
      break;
    }
}
