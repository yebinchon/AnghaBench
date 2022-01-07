
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rc_uint_type ;
typedef int rc_res_id ;
struct TYPE_7__ {int dir; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_9__ {TYPE_1__ u; int named; } ;
struct TYPE_8__ {TYPE_2__ u; TYPE_5__ id; } ;
typedef TYPE_3__ rc_res_entry ;
typedef int FILE ;
 int fprintf (int *,char*,...) ;
 int res_id_print (int *,TYPE_5__,int) ;
 int wr_printcomment (int *,char*,...) ;
 int write_rc_directory (int *,int ,int const*,int const*,int *,int) ;

__attribute__((used)) static void
write_rc_subdir (FILE *e, const rc_res_entry *re,
   const rc_res_id *type, const rc_res_id *name,
   rc_uint_type *language, int level)
{
  fprintf (e, "\n");
  switch (level)
    {
    case 1:
      wr_printcomment (e, "Type: ");
      if (re->id.named)
 res_id_print (e, re->id, 1);
      else
 {
   const char *s;

   switch (re->id.u.id)
     {
     case 144: s = "cursor"; break;
     case 145: s = "bitmap"; break;
     case 136: s = "icon"; break;
     case 135: s = "menu"; break;
     case 143: s = "dialog"; break;
     case 131: s = "stringtable"; break;
     case 140: s = "fontdir"; break;
     case 141: s = "font"; break;
     case 148: s = "accelerators"; break;
     case 132: s = "rcdata"; break;
     case 134: s = "messagetable"; break;
     case 139: s = "group cursor"; break;
     case 138: s = "group icon"; break;
     case 129: s = "version"; break;
     case 142: s = "dlginclude"; break;
     case 133: s = "plugplay"; break;
     case 128: s = "vxd"; break;
     case 147: s = "anicursor"; break;
     case 146: s = "aniicon"; break;
     case 130: s = "toolbar"; break;
     case 137: s = "html"; break;
     default: s = ((void*)0); break;
     }

   if (s != ((void*)0))
     fprintf (e, "%s", s);
   else
     res_id_print (e, re->id, 1);
 }
      break;

    case 2:
      wr_printcomment (e, "Name: ");
      res_id_print (e, re->id, 1);
      break;

    case 3:
      wr_printcomment (e, "Language: ");
      res_id_print (e, re->id, 1);
      break;

    default:
      wr_printcomment (e, "Level %d: ", level);
      res_id_print (e, re->id, 1);
    }

  write_rc_directory (e, re->u.dir, type, name, language, level + 1);
}
