; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_S_proc_wait_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_S_proc_wait_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i64, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@waiting_inf = common dso_local global %struct.inf* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"err = %s, pid = %d, status = 0x%x, sigcode = %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@proc_wait_pid = common dso_local global i64 0, align 8
@proc_waits_pending = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"waits pending now: %d\00", align 1
@EINTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't wait for pid %d: %s\00", align 1
@TARGET_WAITKIND_STOPPED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"process has stopped itself\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @S_proc_wait_reply(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.inf*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load %struct.inf*, %struct.inf** @waiting_inf, align 8
  store %struct.inf* %14, %struct.inf** %13, align 8
  %15 = load %struct.inf*, %struct.inf** %13, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i64, i64* %8, align 8
  %20 = call i8* @safe_strerror(i64 %19)
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i8* [ %20, %18 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %23, i64 %24, i32 %25, i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %22
  %31 = load i64, i64* @proc_wait_pid, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.inf*, %struct.inf** %13, align 8
  %35 = getelementptr inbounds %struct.inf, %struct.inf* %34, i32 0, i32 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.inf*, %struct.inf** %13, align 8
  %40 = getelementptr inbounds %struct.inf, %struct.inf* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.inf*, %struct.inf** %13, align 8
  %47 = call i32 @inf_task_died_status(%struct.inf* %46)
  br label %48

48:                                               ; preds = %45, %38, %30, %22
  %49 = load i64, i64* @proc_waits_pending, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* @proc_waits_pending, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i64 0, i64* @proc_wait_pid, align 8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load %struct.inf*, %struct.inf** %13, align 8
  %55 = load i64, i64* @proc_waits_pending, align 8
  %56 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @EINTR, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.inf*, %struct.inf** %13, align 8
  %65 = getelementptr inbounds %struct.inf, %struct.inf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i8* @safe_strerror(i64 %67)
  %69 = call i32 @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %66, i8* %68)
  %70 = load %struct.inf*, %struct.inf** %13, align 8
  %71 = getelementptr inbounds %struct.inf, %struct.inf* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  %72 = load %struct.inf*, %struct.inf** %13, align 8
  %73 = call i32 @inf_set_traced(%struct.inf* %72, i32 0)
  br label %74

74:                                               ; preds = %63, %59
  br label %105

75:                                               ; preds = %53
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.inf*, %struct.inf** %13, align 8
  %78 = getelementptr inbounds %struct.inf, %struct.inf* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.inf*, %struct.inf** %13, align 8
  %83 = getelementptr inbounds %struct.inf, %struct.inf* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @store_waitstatus(%struct.TYPE_6__* %84, i32 %85)
  %87 = load %struct.inf*, %struct.inf** %13, align 8
  %88 = getelementptr inbounds %struct.inf, %struct.inf* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TARGET_WAITKIND_STOPPED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load %struct.inf*, %struct.inf** %13, align 8
  %96 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.inf*, %struct.inf** %13, align 8
  %98 = getelementptr inbounds %struct.inf, %struct.inf* %97, i32 0, i32 2
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %81
  br label %104

100:                                              ; preds = %75
  %101 = load %struct.inf*, %struct.inf** %13, align 8
  %102 = getelementptr inbounds %struct.inf, %struct.inf* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %99
  br label %105

105:                                              ; preds = %104, %74
  ret i64 0
}

declare dso_local i32 @inf_debug(%struct.inf*, i8*, ...) #1

declare dso_local i8* @safe_strerror(i64) #1

declare dso_local i32 @inf_task_died_status(%struct.inf*) #1

declare dso_local i32 @warning(i8*, i64, i8*) #1

declare dso_local i32 @inf_set_traced(%struct.inf*, i32) #1

declare dso_local i32 @store_waitstatus(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
