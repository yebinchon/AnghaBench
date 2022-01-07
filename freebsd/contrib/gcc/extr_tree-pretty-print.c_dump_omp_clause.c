
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int pretty_printer ;


 int OMP_CLAUSE_CODE (int ) ;


 int OMP_CLAUSE_DECL (int ) ;

 int OMP_CLAUSE_DEFAULT_KIND (int ) ;






 int OMP_CLAUSE_IF_EXPR (int ) ;



 int OMP_CLAUSE_NUM_THREADS_EXPR (int ) ;



 int OMP_CLAUSE_REDUCTION_CODE (int ) ;

 int OMP_CLAUSE_SCHEDULE_CHUNK_EXPR (int ) ;


 int OMP_CLAUSE_SCHEDULE_KIND (int ) ;



 int dump_generic_node (int *,int ,int,int,int) ;
 int gcc_unreachable () ;
 char* op_symbol_1 (int ) ;
 int pp_character (int *,char) ;
 int pp_string (int *,char const*) ;

__attribute__((used)) static void
dump_omp_clause (pretty_printer *buffer, tree clause, int spc, int flags)
{
  const char *name;

  switch (OMP_CLAUSE_CODE (clause))
    {
    case 135:
      name = "private";
      goto print_remap;
    case 128:
      name = "shared";
      goto print_remap;
    case 141:
      name = "firstprivate";
      goto print_remap;
    case 139:
      name = "lastprivate";
      goto print_remap;
    case 148:
      name = "copyin";
      goto print_remap;
    case 147:
      name = "copyprivate";
      goto print_remap;
  print_remap:
      pp_string (buffer, name);
      pp_character (buffer, '(');
      dump_generic_node (buffer, OMP_CLAUSE_DECL (clause),
   spc, flags, 0);
      pp_character (buffer, ')');
      break;

    case 134:
      pp_string (buffer, "reduction(");
      pp_string (buffer, op_symbol_1 (OMP_CLAUSE_REDUCTION_CODE (clause)));
      pp_character (buffer, ':');
      dump_generic_node (buffer, OMP_CLAUSE_DECL (clause),
   spc, flags, 0);
      pp_character (buffer, ')');
      break;

    case 140:
      pp_string (buffer, "if(");
      dump_generic_node (buffer, OMP_CLAUSE_IF_EXPR (clause),
   spc, flags, 0);
      pp_character (buffer, ')');
      break;

    case 137:
      pp_string (buffer, "num_threads(");
      dump_generic_node (buffer, OMP_CLAUSE_NUM_THREADS_EXPR (clause),
   spc, flags, 0);
      pp_character (buffer, ')');
      break;

    case 138:
      pp_string (buffer, "nowait");
      break;
    case 136:
      pp_string (buffer, "ordered");
      break;

    case 146:
      pp_string (buffer, "default(");
      switch (OMP_CLAUSE_DEFAULT_KIND (clause))
 {
      case 142:
 break;
      case 143:
 pp_string (buffer, "shared");
 break;
      case 145:
 pp_string (buffer, "none");
 break;
      case 144:
 pp_string (buffer, "private");
 break;
      default:
 gcc_unreachable ();
 }
      pp_character (buffer, ')');
      break;

    case 133:
      pp_string (buffer, "schedule(");
      switch (OMP_CLAUSE_SCHEDULE_KIND (clause))
 {
      case 129:
 pp_string (buffer, "static");
 break;
      case 132:
 pp_string (buffer, "dynamic");
 break;
      case 131:
 pp_string (buffer, "guided");
 break;
      case 130:
 pp_string (buffer, "runtime");
 break;
      default:
 gcc_unreachable ();
 }
      if (OMP_CLAUSE_SCHEDULE_CHUNK_EXPR (clause))
 {
   pp_character (buffer, ',');
   dump_generic_node (buffer,
       OMP_CLAUSE_SCHEDULE_CHUNK_EXPR (clause),
       spc, flags, 0);
 }
      pp_character (buffer, ')');
      break;

    default:

      dump_generic_node (buffer, clause, spc, flags, 0);
      break;
    }
}
