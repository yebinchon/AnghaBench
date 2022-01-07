; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_update_suspends.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_update_suspends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i32, i64, %struct.proc*, i64, %struct.proc* }
%struct.proc = type { i64, i64, %struct.proc* }

@.str = private unnamed_addr constant [24 x i8] c"updating suspend counts\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%srunning...\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"not \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inf_update_suspends(%struct.inf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inf*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inf* %0, %struct.inf** %3, align 8
  %8 = load %struct.inf*, %struct.inf** %3, align 8
  %9 = getelementptr inbounds %struct.inf, %struct.inf* %8, i32 0, i32 4
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %4, align 8
  %11 = load %struct.inf*, %struct.inf** %3, align 8
  %12 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = icmp ne %struct.proc* %13, null
  br i1 %14, label %15, label %97

15:                                               ; preds = %1
  %16 = load %struct.proc*, %struct.proc** %4, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %21 = load %struct.proc*, %struct.proc** %4, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.proc*, %struct.proc** %4, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load %struct.proc*, %struct.proc** %4, align 8
  %30 = call i32 @proc_update_sc(%struct.proc* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %15
  %32 = load %struct.inf*, %struct.inf** %3, align 8
  %33 = getelementptr inbounds %struct.inf, %struct.inf* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load %struct.inf*, %struct.inf** %3, align 8
  %39 = getelementptr inbounds %struct.inf, %struct.inf* %38, i32 0, i32 2
  %40 = load %struct.proc*, %struct.proc** %39, align 8
  store %struct.proc* %40, %struct.proc** %5, align 8
  br label %41

41:                                               ; preds = %49, %37
  %42 = load %struct.proc*, %struct.proc** %5, align 8
  %43 = icmp ne %struct.proc* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.proc*, %struct.proc** %5, align 8
  %46 = call i32 @proc_update_sc(%struct.proc* %45)
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44
  %50 = load %struct.proc*, %struct.proc** %5, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 2
  %52 = load %struct.proc*, %struct.proc** %51, align 8
  store %struct.proc* %52, %struct.proc** %5, align 8
  br label %41

53:                                               ; preds = %41
  %54 = load %struct.proc*, %struct.proc** %4, align 8
  %55 = getelementptr inbounds %struct.proc, %struct.proc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.proc*, %struct.proc** %4, align 8
  %58 = getelementptr inbounds %struct.proc, %struct.proc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.proc*, %struct.proc** %4, align 8
  %63 = call i32 @proc_update_sc(%struct.proc* %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %53
  %65 = load %struct.inf*, %struct.inf** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i1 [ false, %64 ], [ %70, %68 ]
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %75 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi i1 [ false, %71 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = load %struct.inf*, %struct.inf** %3, align 8
  %85 = getelementptr inbounds %struct.inf, %struct.inf* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.inf*, %struct.inf** %3, align 8
  %87 = getelementptr inbounds %struct.inf, %struct.inf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load %struct.inf*, %struct.inf** %3, align 8
  %92 = getelementptr inbounds %struct.inf, %struct.inf* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %81
  %94 = load %struct.inf*, %struct.inf** %3, align 8
  %95 = getelementptr inbounds %struct.inf, %struct.inf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %93
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @inf_debug(%struct.inf*, i8*, ...) #1

declare dso_local i32 @proc_update_sc(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
