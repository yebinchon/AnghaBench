; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i64, i32, i32, %struct.inf* }
%struct.inf = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.proc* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"Stopped %s.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"aborted\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"not aborting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_abort(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inf*, align 8
  %6 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = call i32 @proc_is_thread(%struct.proc* %7)
  %9 = call i32 @gdb_assert(i32 %8)
  %10 = load %struct.proc*, %struct.proc** %3, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %82, label %14

14:                                               ; preds = %2
  %15 = load %struct.proc*, %struct.proc** %3, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 4
  %17 = load %struct.inf*, %struct.inf** %16, align 8
  store %struct.inf* %17, %struct.inf** %5, align 8
  %18 = load %struct.proc*, %struct.proc** %3, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.inf*, %struct.inf** %5, align 8
  %24 = getelementptr inbounds %struct.inf, %struct.inf* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br label %29

29:                                               ; preds = %22, %14
  %30 = phi i1 [ false, %14 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.proc*, %struct.proc** %3, align 8
  %39 = getelementptr inbounds %struct.proc, %struct.proc* %38, i32 0, i32 2
  store i32 1, i32* %39, align 8
  %40 = load %struct.proc*, %struct.proc** %3, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 4
  %42 = load %struct.inf*, %struct.inf** %41, align 8
  %43 = call i32 @inf_update_suspends(%struct.inf* %42)
  store i32 0, i32* %6, align 4
  %44 = load %struct.proc*, %struct.proc** %3, align 8
  %45 = call i32 @proc_string(%struct.proc* %44)
  %46 = call i32 @warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %66

47:                                               ; preds = %34, %29
  %48 = load %struct.proc*, %struct.proc** %3, align 8
  %49 = load %struct.inf*, %struct.inf** %5, align 8
  %50 = getelementptr inbounds %struct.inf, %struct.inf* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.proc*, %struct.proc** %51, align 8
  %53 = icmp eq %struct.proc* %48, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load %struct.inf*, %struct.inf** %5, align 8
  %56 = getelementptr inbounds %struct.inf, %struct.inf* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %61, %54, %47
  br label %66

66:                                               ; preds = %65, %37
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load %struct.proc*, %struct.proc** %3, align 8
  %71 = getelementptr inbounds %struct.proc, %struct.proc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @thread_abort(i32 %72)
  %74 = load %struct.proc*, %struct.proc** %3, align 8
  %75 = call i32 @proc_debug(%struct.proc* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.proc*, %struct.proc** %3, align 8
  %77 = getelementptr inbounds %struct.proc, %struct.proc* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %81

78:                                               ; preds = %66
  %79 = load %struct.proc*, %struct.proc** %3, align 8
  %80 = call i32 @proc_debug(%struct.proc* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %69
  br label %82

82:                                               ; preds = %81, %2
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @proc_is_thread(%struct.proc*) #1

declare dso_local i32 @inf_update_suspends(%struct.inf*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @proc_string(%struct.proc*) #1

declare dso_local i32 @thread_abort(i32) #1

declare dso_local i32 @proc_debug(%struct.proc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
