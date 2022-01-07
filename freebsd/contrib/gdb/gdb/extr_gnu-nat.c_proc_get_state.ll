; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_get_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"updating state info%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c" (with intention to modify)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@THREAD_STATE_SIZE = common dso_local global i32 0, align 4
@THREAD_STATE_FLAVOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"getting thread state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_get_state(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.proc*, %struct.proc** %4, align 8
  %10 = getelementptr inbounds %struct.proc, %struct.proc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.proc*, %struct.proc** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.proc*, %struct.proc** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @proc_abort(%struct.proc* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.proc*, %struct.proc** %4, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.proc*, %struct.proc** %4, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %23, %2
  %32 = load %struct.proc*, %struct.proc** %4, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @THREAD_STATE_SIZE, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.proc*, %struct.proc** %4, align 8
  %39 = getelementptr inbounds %struct.proc, %struct.proc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @THREAD_STATE_FLAVOR, align 4
  %42 = load %struct.proc*, %struct.proc** %4, align 8
  %43 = getelementptr inbounds %struct.proc, %struct.proc* %42, i32 0, i32 3
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 @thread_get_state(i32 %40, i32 %41, i32 %44, i32* %7)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.proc*, %struct.proc** %4, align 8
  %47 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.proc*, %struct.proc** %4, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %36, %31
  %55 = load %struct.proc*, %struct.proc** %4, align 8
  %56 = getelementptr inbounds %struct.proc, %struct.proc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.proc*, %struct.proc** %4, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 2
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.proc*, %struct.proc** %4, align 8
  %67 = getelementptr inbounds %struct.proc, %struct.proc* %66, i32 0, i32 3
  %68 = ptrtoint i32* %67 to i32
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @proc_debug(%struct.proc*, i8*, ...) #1

declare dso_local i32 @proc_abort(%struct.proc*, i32) #1

declare dso_local i32 @thread_get_state(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
