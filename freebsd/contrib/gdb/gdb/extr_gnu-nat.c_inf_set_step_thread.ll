; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_set_step_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_set_step_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { %struct.proc*, i32 }
%struct.proc = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"setting step thread: %d/%d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"clearing step thread\00", align 1
@MACH_PORT_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_set_step_thread(%struct.inf* %0, %struct.proc* %1) #0 {
  %3 = alloca %struct.inf*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.inf* %0, %struct.inf** %3, align 8
  store %struct.proc* %1, %struct.proc** %4, align 8
  %5 = load %struct.proc*, %struct.proc** %4, align 8
  %6 = icmp ne %struct.proc* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.proc*, %struct.proc** %4, align 8
  %9 = call i64 @proc_is_thread(%struct.proc* %8)
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ true, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @gdb_assert(i32 %13)
  %15 = load %struct.proc*, %struct.proc** %4, align 8
  %16 = icmp ne %struct.proc* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.inf*, %struct.inf** %3, align 8
  %19 = load %struct.inf*, %struct.inf** %3, align 8
  %20 = getelementptr inbounds %struct.inf, %struct.inf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.proc*, %struct.proc** %4, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %29

26:                                               ; preds = %11
  %27 = load %struct.inf*, %struct.inf** %3, align 8
  %28 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %17
  %30 = load %struct.inf*, %struct.inf** %3, align 8
  %31 = getelementptr inbounds %struct.inf, %struct.inf* %30, i32 0, i32 0
  %32 = load %struct.proc*, %struct.proc** %31, align 8
  %33 = load %struct.proc*, %struct.proc** %4, align 8
  %34 = icmp ne %struct.proc* %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %29
  %36 = load %struct.inf*, %struct.inf** %3, align 8
  %37 = getelementptr inbounds %struct.inf, %struct.inf* %36, i32 0, i32 0
  %38 = load %struct.proc*, %struct.proc** %37, align 8
  %39 = icmp ne %struct.proc* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.inf*, %struct.inf** %3, align 8
  %42 = getelementptr inbounds %struct.inf, %struct.inf* %41, i32 0, i32 0
  %43 = load %struct.proc*, %struct.proc** %42, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MACH_PORT_NULL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.inf*, %struct.inf** %3, align 8
  %50 = getelementptr inbounds %struct.inf, %struct.inf* %49, i32 0, i32 0
  %51 = load %struct.proc*, %struct.proc** %50, align 8
  %52 = call i64 @proc_trace(%struct.proc* %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %71

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %40, %35
  %57 = load %struct.proc*, %struct.proc** %4, align 8
  %58 = icmp ne %struct.proc* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.proc*, %struct.proc** %4, align 8
  %61 = call i64 @proc_trace(%struct.proc* %60, i32 1)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.proc*, %struct.proc** %4, align 8
  %65 = load %struct.inf*, %struct.inf** %3, align 8
  %66 = getelementptr inbounds %struct.inf, %struct.inf* %65, i32 0, i32 0
  store %struct.proc* %64, %struct.proc** %66, align 8
  br label %70

67:                                               ; preds = %59, %56
  %68 = load %struct.inf*, %struct.inf** %3, align 8
  %69 = getelementptr inbounds %struct.inf, %struct.inf* %68, i32 0, i32 0
  store %struct.proc* null, %struct.proc** %69, align 8
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %54, %70, %29
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @proc_is_thread(%struct.proc*) #1

declare dso_local i32 @inf_debug(%struct.inf*, i8*, ...) #1

declare dso_local i64 @proc_trace(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
