; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_select_event_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_select_event_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i32, i32 }

@select_singlestep_lwp_callback = common dso_local global i32 0, align 4
@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SEL: Select single-step %s\0A\00", align 1
@count_events_callback = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"SEL: Found %d SIGTRAP events, selecting #%d\0A\00", align 1
@select_event_lwp_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwp_info**, i32*)* @select_event_lwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_event_lwp(%struct.lwp_info** %0, i32* %1) #0 {
  %3 = alloca %struct.lwp_info**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lwp_info*, align 8
  store %struct.lwp_info** %0, %struct.lwp_info*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.lwp_info**, %struct.lwp_info*** %3, align 8
  %11 = load %struct.lwp_info*, %struct.lwp_info** %10, align 8
  %12 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @select_singlestep_lwp_callback, align 4
  %14 = call %struct.lwp_info* @iterate_over_lwps(i32 %13, i32* null)
  store %struct.lwp_info* %14, %struct.lwp_info** %7, align 8
  %15 = load %struct.lwp_info*, %struct.lwp_info** %7, align 8
  %16 = icmp ne %struct.lwp_info* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load i64, i64* @debug_lin_lwp, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* @gdb_stdlog, align 4
  %22 = load %struct.lwp_info*, %struct.lwp_info** %7, align 8
  %23 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @target_pid_to_str(i32 %24)
  %26 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %17
  br label %53

28:                                               ; preds = %2
  %29 = load i32, i32* @count_events_callback, align 4
  %30 = call %struct.lwp_info* @iterate_over_lwps(i32 %29, i32* %5)
  %31 = load i32, i32* %5, align 4
  %32 = sitofp i32 %31 to double
  %33 = call i64 (...) @rand()
  %34 = sitofp i64 %33 to double
  %35 = fmul double %32, %34
  %36 = load double, double* @RAND_MAX, align 8
  %37 = fadd double %36, 1.000000e+00
  %38 = fdiv double %35, %37
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i64, i64* @debug_lin_lwp, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* @gdb_stdlog, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %42, %28
  %51 = load i32, i32* @select_event_lwp_callback, align 4
  %52 = call %struct.lwp_info* @iterate_over_lwps(i32 %51, i32* %6)
  store %struct.lwp_info* %52, %struct.lwp_info** %7, align 8
  br label %53

53:                                               ; preds = %50, %27
  %54 = load %struct.lwp_info*, %struct.lwp_info** %7, align 8
  %55 = icmp ne %struct.lwp_info* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.lwp_info*, %struct.lwp_info** %7, align 8
  %58 = load %struct.lwp_info**, %struct.lwp_info*** %3, align 8
  store %struct.lwp_info* %57, %struct.lwp_info** %58, align 8
  %59 = load %struct.lwp_info*, %struct.lwp_info** %7, align 8
  %60 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %53
  %64 = load %struct.lwp_info**, %struct.lwp_info*** %3, align 8
  %65 = load %struct.lwp_info*, %struct.lwp_info** %64, align 8
  %66 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  ret void
}

declare dso_local %struct.lwp_info* @iterate_over_lwps(i32, i32*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, ...) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i64 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
