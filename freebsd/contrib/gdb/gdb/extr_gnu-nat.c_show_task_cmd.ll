; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_show_task_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_show_task_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"show task\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @show_task_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_task_cmd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inf*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.inf* (...) @cur_inf()
  store %struct.inf* %6, %struct.inf** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @check_empty(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @show_signals_cmd(i32 0, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @show_exceptions_cmd(i32 0, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @show_task_pause_cmd(i32 0, i32 %13)
  %15 = load %struct.inf*, %struct.inf** %5, align 8
  %16 = getelementptr inbounds %struct.inf, %struct.inf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @show_thread_default_pause_cmd(i32 0, i32 %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @show_thread_default_run_cmd(i32 0, i32 %23)
  %25 = load %struct.inf*, %struct.inf** %5, align 8
  %26 = getelementptr inbounds %struct.inf, %struct.inf* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @show_stopped_cmd(i32 0, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @show_sig_thread_cmd(i32 0, i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.inf*, %struct.inf** %5, align 8
  %36 = getelementptr inbounds %struct.inf, %struct.inf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @show_task_detach_sc_cmd(i32 0, i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.inf*, %struct.inf** %5, align 8
  %44 = getelementptr inbounds %struct.inf, %struct.inf* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @show_thread_default_detach_sc_cmd(i32 0, i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  ret void
}

declare dso_local %struct.inf* @cur_inf(...) #1

declare dso_local i32 @check_empty(i8*, i8*) #1

declare dso_local i32 @show_signals_cmd(i32, i32) #1

declare dso_local i32 @show_exceptions_cmd(i32, i32) #1

declare dso_local i32 @show_task_pause_cmd(i32, i32) #1

declare dso_local i32 @show_thread_default_pause_cmd(i32, i32) #1

declare dso_local i32 @show_thread_default_run_cmd(i32, i32) #1

declare dso_local i32 @show_stopped_cmd(i32, i32) #1

declare dso_local i32 @show_sig_thread_cmd(i32, i32) #1

declare dso_local i32 @show_task_detach_sc_cmd(i32, i32) #1

declare dso_local i32 @show_thread_default_detach_sc_cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
