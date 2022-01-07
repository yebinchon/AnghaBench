; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_attach_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_attach_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_has_execution = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"A program is being debugged already.  Kill it? \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Not killed.\00", align 1
@STOP_QUIETLY_NO_SIGSTOP = common dso_local global i32 0, align 4
@stop_soon = common dso_local global i32 0, align 4
@NO_STOP_QUIETLY = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@auto_solib_add = common dso_local global i32 0, align 4
@current_target = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attach_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %6, align 8
  %7 = call i32 (...) @dont_repeat()
  %8 = load i64, i64* @target_has_execution, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = call i64 @query(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @target_kill()
  br label %17

15:                                               ; preds = %10
  %16 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %13
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @target_attach(i8* %19, i32 %20)
  %22 = call i32 (...) @target_terminal_init()
  %23 = call i32 (...) @target_terminal_inferior()
  %24 = call i32 (...) @init_wait_for_inferior()
  %25 = call i32 (...) @clear_proceed_status()
  %26 = load i32, i32* @STOP_QUIETLY_NO_SIGSTOP, align 4
  store i32 %26, i32* @stop_soon, align 4
  %27 = call i32 (...) @wait_for_inferior()
  %28 = load i32, i32* @NO_STOP_QUIETLY, align 4
  store i32 %28, i32* @stop_soon, align 4
  %29 = call i64 @get_exec_file(i32 0)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @inferior_ptid, align 4
  %35 = call i32 @PIDGET(i32 %34)
  %36 = call i8* @target_pid_to_exec_file(i32 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @source_full_path_of(i8* %40, i8** %6)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i8* @savestring(i8* %44, i32 %46)
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @exec_file_attach(i8* %49, i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @symbol_file_add_main(i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %33
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* @inferior_ptid, align 4
  %58 = call i32 @PIDGET(i32 %57)
  %59 = call i32 @target_post_attach(i32 %58)
  %60 = call i32 (...) @normal_stop()
  br i1 true, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (...) @attach_hook()
  br label %63

63:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i64 @query(i8*) #1

declare dso_local i32 @target_kill(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @target_attach(i8*, i32) #1

declare dso_local i32 @target_terminal_init(...) #1

declare dso_local i32 @target_terminal_inferior(...) #1

declare dso_local i32 @init_wait_for_inferior(...) #1

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local i32 @wait_for_inferior(...) #1

declare dso_local i64 @get_exec_file(i32) #1

declare dso_local i8* @target_pid_to_exec_file(i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @source_full_path_of(i8*, i8**) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @exec_file_attach(i8*, i32) #1

declare dso_local i32 @symbol_file_add_main(i8*, i32) #1

declare dso_local i32 @target_post_attach(i32) #1

declare dso_local i32 @normal_stop(...) #1

declare dso_local i32 @attach_hook(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
