; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_find_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_find_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.change = type { i64, i64, i64, i64, i64, %struct.change* }

@LIN_MAX = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.change* (%struct.change*)* @find_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.change* @find_hunk(%struct.change* %0) #0 {
  %2 = alloca %struct.change*, align 8
  %3 = alloca %struct.change*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.change* %0, %struct.change** %2, align 8
  %9 = load i32, i32* @LIN_MAX, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sdiv i32 %10, 2
  %12 = load i32, i32* @context, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @LIN_MAX, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @context, align 4
  %18 = mul nsw i32 2, %17
  %19 = add nsw i32 %18, 1
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i32 [ %15, %14 ], [ %19, %16 ]
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @context, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %90, %20
  %26 = load %struct.change*, %struct.change** %2, align 8
  %27 = getelementptr inbounds %struct.change, %struct.change* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.change*, %struct.change** %2, align 8
  %30 = getelementptr inbounds %struct.change, %struct.change* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %4, align 8
  %33 = load %struct.change*, %struct.change** %2, align 8
  %34 = getelementptr inbounds %struct.change, %struct.change* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.change*, %struct.change** %2, align 8
  %37 = getelementptr inbounds %struct.change, %struct.change* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  store i64 %39, i64* %5, align 8
  %40 = load %struct.change*, %struct.change** %2, align 8
  store %struct.change* %40, %struct.change** %3, align 8
  %41 = load %struct.change*, %struct.change** %2, align 8
  %42 = getelementptr inbounds %struct.change, %struct.change* %41, i32 0, i32 5
  %43 = load %struct.change*, %struct.change** %42, align 8
  store %struct.change* %43, %struct.change** %2, align 8
  %44 = load %struct.change*, %struct.change** %3, align 8
  %45 = getelementptr inbounds %struct.change, %struct.change* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %25
  %49 = load %struct.change*, %struct.change** %2, align 8
  %50 = icmp ne %struct.change* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.change*, %struct.change** %2, align 8
  %53 = getelementptr inbounds %struct.change, %struct.change* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %25
  %57 = load i64, i64* %8, align 8
  br label %60

58:                                               ; preds = %51, %48
  %59 = load i64, i64* %7, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  store i64 %61, i64* %6, align 8
  %62 = load %struct.change*, %struct.change** %2, align 8
  %63 = icmp ne %struct.change* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load %struct.change*, %struct.change** %2, align 8
  %66 = getelementptr inbounds %struct.change, %struct.change* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load %struct.change*, %struct.change** %2, align 8
  %71 = getelementptr inbounds %struct.change, %struct.change* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = sub nsw i64 %72, %73
  %75 = icmp ne i64 %69, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = call i32 (...) @abort() #2
  unreachable

78:                                               ; preds = %64, %60
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.change*, %struct.change** %2, align 8
  %81 = icmp ne %struct.change* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.change*, %struct.change** %2, align 8
  %84 = getelementptr inbounds %struct.change, %struct.change* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i64, i64* %6, align 8
  %89 = icmp slt i64 %87, %88
  br label %90

90:                                               ; preds = %82, %79
  %91 = phi i1 [ false, %79 ], [ %89, %82 ]
  br i1 %91, label %25, label %92

92:                                               ; preds = %90
  %93 = load %struct.change*, %struct.change** %3, align 8
  ret %struct.change* %93
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
