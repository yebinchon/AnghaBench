
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttreq_t ;
typedef int register_value_t ;
typedef int register_value ;
typedef int lwpid_t ;
typedef int TTRACE_ARG_TYPE ;
typedef int PTRACE_ARG3_TYPE ;
 int TT_LWP_SINGLE ;
 int TT_NIL ;
 int TT_PROC_ATTACH ;
 int TT_PROC_CONTINUE ;
 int TT_PROC_DETACH ;
 int TT_PROC_EXIT ;
 int TT_PROC_GET_PATHNAME ;
 int TT_PROC_RDDATA ;
 int TT_PROC_RDTEXT ;
 int TT_PROC_WRDATA ;
 int TT_PROC_WRTEXT ;
 int TT_VERSION ;
 int call_real_ttrace (int ,int ,int ,int,int,int) ;
 int call_ttrace (int,int,int,int,int) ;
 int map_from_gdb_tid (int) ;
 int parent_attach_all (int ,int ,int ) ;
 int read_from_register_save_state (int,int,int*,int) ;
 int write_to_register_save_state (int,int,int*,int) ;

int
call_ptrace (int pt_request, int gdb_tid, PTRACE_ARG3_TYPE addr, int data)
{
  ttreq_t tt_request;
  TTRACE_ARG_TYPE tt_addr = (TTRACE_ARG_TYPE) addr;
  TTRACE_ARG_TYPE tt_data = (TTRACE_ARG_TYPE) data;
  TTRACE_ARG_TYPE tt_addr2 = TT_NIL;
  int tt_status;
  register_value_t register_value;
  int read_buf;





  switch (pt_request)
    {







    case 134:
      return parent_attach_all (0, 0, 0);

    case 135:
      tt_status = read_from_register_save_state (gdb_tid,
       tt_addr,
       &register_value,
       sizeof (register_value));
      if (tt_status < 0)
 return tt_status;
      return register_value;

    case 128:
      register_value = (int) tt_data;
      tt_status = write_to_register_save_state (gdb_tid,
      tt_addr,
      &register_value,
      sizeof (register_value));
      return tt_status;
      break;

    case 136:
      tt_status = call_ttrace (TT_PROC_RDTEXT,
          gdb_tid,
          tt_addr,
          (TTRACE_ARG_TYPE) 4,
          (TTRACE_ARG_TYPE) & read_buf);
      if (tt_status < 0)
 return tt_status;
      return read_buf;

    case 137:
      tt_status = call_ttrace (TT_PROC_RDDATA,
          gdb_tid,
          tt_addr,
          (TTRACE_ARG_TYPE) 4,
          (TTRACE_ARG_TYPE) & read_buf);
      if (tt_status < 0)
 return tt_status;
      return read_buf;

    case 144:
      tt_status = call_real_ttrace (TT_PROC_ATTACH,
        map_from_gdb_tid (gdb_tid),
        (lwpid_t) TT_NIL,
        tt_addr,
        (TTRACE_ARG_TYPE) TT_VERSION,
        tt_addr2);
      if (tt_status < 0)
 return tt_status;
      return tt_status;




    case 142:
      tt_request = TT_PROC_DETACH;
      break;

    case 130:
      tt_request = TT_PROC_WRTEXT;
      tt_data = 4;
      tt_addr2 = (TTRACE_ARG_TYPE) & data;
      break;

    case 131:
      tt_request = TT_PROC_WRDATA;
      tt_data = 4;
      tt_addr2 = (TTRACE_ARG_TYPE) & data;
      break;

    case 138:
      tt_request = TT_PROC_RDTEXT;
      break;

    case 139:
      tt_request = TT_PROC_RDDATA;
      break;

    case 129:
      tt_request = TT_PROC_WRTEXT;
      break;

    case 132:
      tt_request = TT_PROC_WRDATA;
      break;

    case 143:
      tt_request = TT_PROC_CONTINUE;
      break;

    case 133:
      tt_request = TT_LWP_SINGLE;
      break;

    case 140:
      tt_request = TT_PROC_EXIT;
      break;

    case 141:
      tt_request = TT_PROC_GET_PATHNAME;
      break;

    default:
      tt_request = pt_request;
      break;
    }

  return call_ttrace (tt_request,
        gdb_tid,
        tt_addr,
        tt_data,
        tt_addr2);
}
