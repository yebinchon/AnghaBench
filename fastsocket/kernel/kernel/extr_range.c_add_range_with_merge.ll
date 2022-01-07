; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_range.c_add_range_with_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_range.c_add_range_with_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_range_with_merge(%struct.range* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.range* %0, %struct.range** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %6, align 4
  br label %98

22:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %88, %22
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %91

27:                                               ; preds = %23
  %28 = load %struct.range*, %struct.range** %7, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.range, %struct.range* %28, i64 %30
  %32 = getelementptr inbounds %struct.range, %struct.range* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %88

36:                                               ; preds = %27
  %37 = load %struct.range*, %struct.range** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.range, %struct.range* %37, i64 %39
  %41 = getelementptr inbounds %struct.range, %struct.range* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @max(i64 %42, i64 %43)
  store i64 %44, i64* %15, align 8
  %45 = load %struct.range*, %struct.range** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.range, %struct.range* %45, i64 %47
  %49 = getelementptr inbounds %struct.range, %struct.range* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @min(i64 %50, i64 %51)
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = add nsw i64 %54, 1
  %56 = icmp sgt i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %36
  br label %88

58:                                               ; preds = %36
  %59 = load %struct.range*, %struct.range** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.range, %struct.range* %59, i64 %61
  %63 = getelementptr inbounds %struct.range, %struct.range* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @min(i64 %64, i64 %65)
  store i64 %66, i64* %13, align 8
  %67 = load %struct.range*, %struct.range** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.range, %struct.range* %67, i64 %69
  %71 = getelementptr inbounds %struct.range, %struct.range* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 @max(i64 %72, i64 %73)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.range*, %struct.range** %7, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.range, %struct.range* %76, i64 %78
  %80 = getelementptr inbounds %struct.range, %struct.range* %79, i32 0, i32 1
  store i64 %75, i64* %80, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load %struct.range*, %struct.range** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.range, %struct.range* %82, i64 %84
  %86 = getelementptr inbounds %struct.range, %struct.range* %85, i32 0, i32 0
  store i64 %81, i64* %86, align 8
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %6, align 4
  br label %98

88:                                               ; preds = %57, %35
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %23

91:                                               ; preds = %23
  %92 = load %struct.range*, %struct.range** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @add_range(%struct.range* %92, i32 %93, i32 %94, i64 %95, i64 %96)
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %91, %58, %20
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @add_range(%struct.range*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
