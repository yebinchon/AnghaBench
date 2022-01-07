; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_get_args.c_show_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_get_args.c_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [229 x i8] c"Usage: %s [-nprvHS] [-a mount_point] [-c cache_time] [-d domain]\0A\09[-k kernel_arch] [-l logfile%s\0A\09[-t timeout.retrans] [-w wait_timeout] [-A arch] [-C cluster_name]\0A\09[-o op_sys_ver] [-O op_sys_name]\0A\09[-F conf_file] [-T conf_tag]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@xlog_opt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"\09[directory mapname [-map_options]] ...\0A\00", align 1
@dbg_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i8* (...) @am_get_progname()
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fputc(i8 signext 10, i32 %4)
  %6 = load i32, i32* @xlog_opt, align 4
  %7 = call i32 @show_opts(i8 signext 120, i32 %6)
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @am_get_progname(...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @show_opts(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
