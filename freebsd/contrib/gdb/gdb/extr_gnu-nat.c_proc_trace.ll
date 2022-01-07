; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"tracing %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@MACH_PORT_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_trace(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.proc*, %struct.proc** %4, align 8
  %8 = call i32 @proc_get_state(%struct.proc* %7, i32 1)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @proc_debug(%struct.proc* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %12
  %22 = load %struct.proc*, %struct.proc** %4, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MACH_PORT_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.proc*, %struct.proc** %4, align 8
  %29 = load %struct.proc*, %struct.proc** %4, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @proc_steal_exc_port(%struct.proc* %28, i32 %33)
  br label %35

35:                                               ; preds = %27, %21
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @THREAD_STATE_SET_TRACED(i32 %36)
  br label %41

38:                                               ; preds = %12
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @THREAD_STATE_CLEAR_TRACED(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @proc_get_state(%struct.proc*, i32) #1

declare dso_local i32 @proc_debug(%struct.proc*, i8*, i8*) #1

declare dso_local i32 @proc_steal_exc_port(%struct.proc*, i32) #1

declare dso_local i32 @THREAD_STATE_SET_TRACED(i32) #1

declare dso_local i32 @THREAD_STATE_CLEAR_TRACED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
