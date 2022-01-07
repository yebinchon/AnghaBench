; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_finish_callback_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_finish_callback_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.utrace = type { i32 }
%struct.utrace_report = type { i32, i32, i32 }
%struct.utrace_engine = type { i32* }

@UTRACE_DETACH = common dso_local global i32 0, align 4
@utrace_detached_ops = common dso_local global i32 0, align 4
@UTRACE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.utrace*, %struct.utrace_report*, %struct.utrace_engine*, i32)* @finish_callback_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_callback_report(%struct.task_struct* %0, %struct.utrace* %1, %struct.utrace_report* %2, %struct.utrace_engine* %3, i32 %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.utrace*, align 8
  %8 = alloca %struct.utrace_report*, align 8
  %9 = alloca %struct.utrace_engine*, align 8
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.utrace* %1, %struct.utrace** %7, align 8
  store %struct.utrace_report* %2, %struct.utrace_report** %8, align 8
  store %struct.utrace_engine* %3, %struct.utrace_engine** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UTRACE_DETACH, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = load %struct.utrace*, %struct.utrace** %7, align 8
  %16 = getelementptr inbounds %struct.utrace, %struct.utrace* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.utrace_engine*, %struct.utrace_engine** %9, align 8
  %19 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %18, i32 0, i32 0
  store i32* @utrace_detached_ops, i32** %19, align 8
  %20 = load %struct.utrace*, %struct.utrace** %7, align 8
  %21 = getelementptr inbounds %struct.utrace, %struct.utrace* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  br label %23

23:                                               ; preds = %14, %5
  %24 = load %struct.utrace_engine*, %struct.utrace_engine** %9, align 8
  %25 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, @utrace_detached_ops
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.utrace_report*, %struct.utrace_report** %8, align 8
  %30 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %95

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.utrace_report*, %struct.utrace_report** %8, align 8
  %34 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.utrace_report*, %struct.utrace_report** %8, align 8
  %40 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @UTRACE_STOP, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.utrace_report*, %struct.utrace_report** %8, align 8
  %48 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.utrace_report*, %struct.utrace_report** %8, align 8
  %54 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.utrace_engine*, %struct.utrace_engine** %9, align 8
  %57 = call i64 @engine_wants_stop(%struct.utrace_engine* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.utrace*, %struct.utrace** %7, align 8
  %61 = getelementptr inbounds %struct.utrace, %struct.utrace* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.utrace_engine*, %struct.utrace_engine** %9, align 8
  %64 = call i32 @clear_engine_wants_stop(%struct.utrace_engine* %63)
  %65 = load %struct.utrace*, %struct.utrace** %7, align 8
  %66 = getelementptr inbounds %struct.utrace, %struct.utrace* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  br label %68

68:                                               ; preds = %59, %55
  br label %95

69:                                               ; preds = %41
  %70 = load %struct.utrace_engine*, %struct.utrace_engine** %9, align 8
  %71 = call i64 @engine_wants_stop(%struct.utrace_engine* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %69
  %74 = load %struct.utrace*, %struct.utrace** %7, align 8
  %75 = getelementptr inbounds %struct.utrace, %struct.utrace* %74, i32 0, i32 0
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.utrace_engine*, %struct.utrace_engine** %9, align 8
  %78 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, @utrace_detached_ops
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load %struct.utrace_report*, %struct.utrace_report** %8, align 8
  %86 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %91

87:                                               ; preds = %73
  %88 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %89 = load %struct.utrace_engine*, %struct.utrace_engine** %9, align 8
  %90 = call i32 @mark_engine_wants_stop(%struct.task_struct* %88, %struct.utrace_engine* %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.utrace*, %struct.utrace** %7, align 8
  %93 = getelementptr inbounds %struct.utrace, %struct.utrace* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  br label %95

95:                                               ; preds = %28, %68, %91, %69
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @engine_wants_stop(%struct.utrace_engine*) #1

declare dso_local i32 @clear_engine_wants_stop(%struct.utrace_engine*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mark_engine_wants_stop(%struct.task_struct*, %struct.utrace_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
