; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___zone_watermark_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___zone_watermark_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i64*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ALLOC_HIGH = common dso_local global i32 0, align 4
@ALLOC_HARDER = common dso_local global i32 0, align 4
@WMARK_MIN = common dso_local global i64 0, align 8
@pageblock_order = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*, i32, i64, i32, i32, i64)* @__zone_watermark_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zone_watermark_ok(%struct.zone* %0, i32 %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.zone*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.zone* %0, %struct.zone** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %10, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = shl i32 1, %17
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %13, align 8
  %22 = sub nsw i64 %21, %20
  store i64 %22, i64* %13, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @ALLOC_HIGH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i64, i64* %14, align 8
  %29 = sdiv i64 %28, 2
  %30 = load i64, i64* %14, align 8
  %31 = sub nsw i64 %30, %29
  store i64 %31, i64* %14, align 8
  br label %32

32:                                               ; preds = %27, %6
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @ALLOC_HARDER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i64, i64* %14, align 8
  %39 = sdiv i64 %38, 4
  %40 = load i64, i64* %14, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* %14, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.zone*, %struct.zone** %8, align 8
  %46 = getelementptr inbounds %struct.zone, %struct.zone* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %44, %51
  %53 = icmp sle i64 %43, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %127

55:                                               ; preds = %42
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %127

59:                                               ; preds = %55
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.zone*, %struct.zone** %8, align 8
  %62 = getelementptr inbounds %struct.zone, %struct.zone* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @WMARK_MIN, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %60, %66
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %14, align 8
  %69 = icmp slt i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @ALLOC_HIGH, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %59
  %77 = load i64, i64* %14, align 8
  %78 = sdiv i64 %77, 2
  %79 = load i64, i64* %14, align 8
  %80 = sub nsw i64 %79, %78
  store i64 %80, i64* %14, align 8
  br label %81

81:                                               ; preds = %76, %59
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @ALLOC_HARDER, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i64, i64* %14, align 8
  %88 = sdiv i64 %87, 4
  %89 = load i64, i64* %14, align 8
  %90 = sub nsw i64 %89, %88
  store i64 %90, i64* %14, align 8
  br label %91

91:                                               ; preds = %86, %81
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %123, %91
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %92
  %97 = load %struct.zone*, %struct.zone** %8, align 8
  %98 = getelementptr inbounds %struct.zone, %struct.zone* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = shl i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %13, align 8
  %109 = sub nsw i64 %108, %107
  store i64 %109, i64* %13, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @pageblock_order, align 4
  %112 = ashr i32 %111, 2
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %96
  %115 = load i64, i64* %14, align 8
  %116 = ashr i64 %115, 1
  store i64 %116, i64* %14, align 8
  br label %117

117:                                              ; preds = %114, %96
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %14, align 8
  %120 = icmp sle i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %127

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %92

126:                                              ; preds = %92
  store i32 1, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %121, %58, %54
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
