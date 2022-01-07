
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {scalar_t__ fd_pipe; int filename; } ;


 int O_RDONLY ;
 int build_id__mark_dso_hit_ops ;
 scalar_t__ filename__fprintf_build_id (int ,int ) ;
 int input_name ;
 int perf_session__delete (struct perf_session*) ;
 int perf_session__fprintf_dsos_buildid (struct perf_session*,int ,int) ;
 struct perf_session* perf_session__new (int ,int ,int,int,int *) ;
 int perf_session__process_events (struct perf_session*,int *) ;
 int stdout ;
 int symbol__elf_init () ;

__attribute__((used)) static int perf_session__list_build_ids(bool force, bool with_hits)
{
 struct perf_session *session;

 symbol__elf_init();

 session = perf_session__new(input_name, O_RDONLY, force, 0,
        &build_id__mark_dso_hit_ops);
 if (session == ((void*)0))
  return -1;




 if (filename__fprintf_build_id(session->filename, stdout))
  goto out;





 if (with_hits || session->fd_pipe)
  perf_session__process_events(session, &build_id__mark_dso_hit_ops);

 perf_session__fprintf_dsos_buildid(session, stdout, with_hits);
out:
 perf_session__delete(session);
 return 0;
}
