; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_agent_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_agent_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }
%struct.expression = type { i32 }
%struct.agent_expr = type { i32 }
%struct.frame_info = type { i32 }

@overlay_debugging = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"GDB can't do agent expression translation with overlays.\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"expression to translate\00", align 1
@free_current_contents = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @agent_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agent_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.expression*, align 8
  %7 = alloca %struct.agent_expr*, align 8
  %8 = alloca %struct.frame_info*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.cleanup* null, %struct.cleanup** %5, align 8
  %9 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %9, %struct.frame_info** %8, align 8
  %10 = load i64, i64* @overlay_debugging, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i8*, i8** %3, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @error_no_arg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i8*, i8** %3, align 8
  %21 = call %struct.expression* @parse_expression(i8* %20)
  store %struct.expression* %21, %struct.expression** %6, align 8
  %22 = load i32, i32* @free_current_contents, align 4
  %23 = call %struct.cleanup* @make_cleanup(i32 %22, %struct.expression** %6)
  store %struct.cleanup* %23, %struct.cleanup** %5, align 8
  %24 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %25 = call i32 @get_frame_pc(%struct.frame_info* %24)
  %26 = load %struct.expression*, %struct.expression** %6, align 8
  %27 = call %struct.agent_expr* @gen_trace_for_expr(i32 %25, %struct.expression* %26)
  store %struct.agent_expr* %27, %struct.agent_expr** %7, align 8
  %28 = load %struct.agent_expr*, %struct.agent_expr** %7, align 8
  %29 = call i32 @make_cleanup_free_agent_expr(%struct.agent_expr* %28)
  %30 = load i32, i32* @gdb_stdout, align 4
  %31 = load %struct.agent_expr*, %struct.agent_expr** %7, align 8
  %32 = call i32 @ax_print(i32 %30, %struct.agent_expr* %31)
  %33 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %34 = call i32 @do_cleanups(%struct.cleanup* %33)
  %35 = call i32 (...) @dont_repeat()
  ret void
}

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local %struct.agent_expr* @gen_trace_for_expr(i32, %struct.expression*) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @make_cleanup_free_agent_expr(%struct.agent_expr*) #1

declare dso_local i32 @ax_print(i32, %struct.agent_expr*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @dont_repeat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
