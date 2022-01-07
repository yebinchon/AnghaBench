; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_compute_finetune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_compute_finetune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@semitone_tuning = common dso_local global i32* null, align 8
@cent_tuning = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compute_finetune(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %5, align 8
  br label %106

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %5, align 8
  br label %106

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %5, align 8
  br label %106

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 8192
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 8192, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sdiv i32 %36, 8192
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %5, align 8
  br label %106

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %59, %55
  br label %62

62:                                               ; preds = %65, %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 2399
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 %66, 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 2400
  store i32 %69, i32* %7, align 4
  br label %62

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = sdiv i32 %71, 100
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp sgt i32 %73, 99
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 99, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i32, i32* %7, align 4
  %78 = srem i32 %77, 100
  store i32 %78, i32* %13, align 4
  %79 = load i32*, i32** @semitone_tuning, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %14, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32*, i32** @cent_tuning, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %85, %90
  %92 = sdiv i32 %91, 10000
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %76
  %97 = load i64, i64* %6, align 8
  %98 = mul i64 %97, 10000
  %99 = load i64, i64* %10, align 8
  %100 = udiv i64 %98, %99
  store i64 %100, i64* %5, align 8
  br label %106

101:                                              ; preds = %76
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* %10, align 8
  %104 = mul i64 %102, %103
  %105 = udiv i64 %104, 10000
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %101, %96, %43, %27, %22, %17
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
