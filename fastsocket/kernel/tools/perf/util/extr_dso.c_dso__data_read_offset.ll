; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dso.c_dso__data_read_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dso.c_dso__data_read_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.machine = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dso__data_read_offset(%struct.dso* %0, %struct.machine* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.dso*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.dso* %0, %struct.dso** %7, align 8
  store %struct.machine* %1, %struct.machine** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i32*, i32** %10, align 8
  store i32* %15, i32** %13, align 8
  br label %16

16:                                               ; preds = %51, %5
  %17 = load %struct.dso*, %struct.dso** %7, align 8
  %18 = load %struct.machine*, %struct.machine** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %13, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i64 @dso_cache_read(%struct.dso* %17, %struct.machine* %18, i32 %19, i32* %20, i64 %21)
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i64, i64* %14, align 8
  store i64 %26, i64* %6, align 8
  br label %56

27:                                               ; preds = %16
  %28 = load i64, i64* %14, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %54

31:                                               ; preds = %27
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp sgt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 %40
  store i32* %42, i32** %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %31
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %16, label %54

54:                                               ; preds = %51, %30
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %54, %25
  %57 = load i64, i64* %6, align 8
  ret i64 %57
}

declare dso_local i64 @dso_cache_read(%struct.dso*, %struct.machine*, i32, i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
