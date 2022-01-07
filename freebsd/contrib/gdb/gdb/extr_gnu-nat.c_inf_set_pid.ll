; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_set_pid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_set_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i32, %struct.proc*, i64, i64 }
%struct.proc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"setting pid: %d\00", align 1
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@proc_server = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error getting task for pid %d: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"setting task: %d\00", align 1
@PROC_TID_TASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_set_pid(%struct.inf* %0, i64 %1) #0 {
  %3 = alloca %struct.inf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i64, align 8
  store %struct.inf* %0, %struct.inf** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.inf*, %struct.inf** %3, align 8
  %9 = getelementptr inbounds %struct.inf, %struct.inf* %8, i32 0, i32 1
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %6, align 8
  %11 = load %struct.inf*, %struct.inf** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @inf_debug(%struct.inf* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %4, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @MACH_PORT_NULL, align 8
  store i64 %17, i64* %5, align 8
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* @proc_server, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @proc_pid2task(i32 %19, i64 %20, i64* %5)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i8* @safe_strerror(i64 %26)
  %28 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %25, i8* %27)
  br label %29

29:                                               ; preds = %24, %18
  br label %30

30:                                               ; preds = %29, %16
  %31 = load %struct.inf*, %struct.inf** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @inf_debug(%struct.inf* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load %struct.inf*, %struct.inf** %3, align 8
  %35 = getelementptr inbounds %struct.inf, %struct.inf* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @task_suspend(i64 %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.proc*, %struct.proc** %6, align 8
  %43 = icmp ne %struct.proc* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.proc*, %struct.proc** %6, align 8
  %46 = getelementptr inbounds %struct.proc, %struct.proc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.inf*, %struct.inf** %3, align 8
  %52 = getelementptr inbounds %struct.inf, %struct.inf* %51, i32 0, i32 1
  store %struct.proc* null, %struct.proc** %52, align 8
  %53 = load %struct.inf*, %struct.inf** %3, align 8
  %54 = call i32 @inf_validate_procs(%struct.inf* %53)
  %55 = load %struct.proc*, %struct.proc** %6, align 8
  %56 = call i32 @_proc_free(%struct.proc* %55)
  br label %57

57:                                               ; preds = %50, %44, %41
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @MACH_PORT_NULL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.inf*, %struct.inf** %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* @PROC_TID_TASK, align 4
  %65 = call %struct.proc* @make_proc(%struct.inf* %62, i64 %63, i32 %64)
  %66 = load %struct.inf*, %struct.inf** %3, align 8
  %67 = getelementptr inbounds %struct.inf, %struct.inf* %66, i32 0, i32 1
  store %struct.proc* %65, %struct.proc** %67, align 8
  %68 = load %struct.inf*, %struct.inf** %3, align 8
  %69 = getelementptr inbounds %struct.inf, %struct.inf* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %61, %57
  %71 = load %struct.inf*, %struct.inf** %3, align 8
  %72 = getelementptr inbounds %struct.inf, %struct.inf* %71, i32 0, i32 1
  %73 = load %struct.proc*, %struct.proc** %72, align 8
  %74 = icmp ne %struct.proc* %73, null
  br i1 %74, label %75, label %94

75:                                               ; preds = %70
  %76 = load i64, i64* %4, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.inf*, %struct.inf** %3, align 8
  %79 = getelementptr inbounds %struct.inf, %struct.inf* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.inf*, %struct.inf** %3, align 8
  %81 = getelementptr inbounds %struct.inf, %struct.inf* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load %struct.inf*, %struct.inf** %3, align 8
  %86 = getelementptr inbounds %struct.inf, %struct.inf* %85, i32 0, i32 1
  %87 = load %struct.proc*, %struct.proc** %86, align 8
  %88 = getelementptr inbounds %struct.proc, %struct.proc* %87, i32 0, i32 2
  store i32 1, i32* %88, align 4
  %89 = load %struct.inf*, %struct.inf** %3, align 8
  %90 = getelementptr inbounds %struct.inf, %struct.inf* %89, i32 0, i32 1
  %91 = load %struct.proc*, %struct.proc** %90, align 8
  %92 = getelementptr inbounds %struct.proc, %struct.proc* %91, i32 0, i32 1
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %84, %75
  br label %97

94:                                               ; preds = %70
  %95 = load %struct.inf*, %struct.inf** %3, align 8
  %96 = getelementptr inbounds %struct.inf, %struct.inf* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %93
  ret void
}

declare dso_local i32 @inf_debug(%struct.inf*, i8*, i64) #1

declare dso_local i64 @proc_pid2task(i32, i64, i64*) #1

declare dso_local i32 @error(i8*, i64, i8*) #1

declare dso_local i8* @safe_strerror(i64) #1

declare dso_local i32 @task_suspend(i64) #1

declare dso_local i32 @inf_validate_procs(%struct.inf*) #1

declare dso_local i32 @_proc_free(%struct.proc*) #1

declare dso_local %struct.proc* @make_proc(%struct.inf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
