; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_fallbackSimpleSort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_fallbackSimpleSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i32, i32)* @fallbackSimpleSort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fallbackSimpleSort(i64* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %149

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %22, label %86

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %23, 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %82, %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %25
  %30 = load i64*, i64** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i64*, i64** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %71, %29
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %49, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %48, %56
  br label %58

58:                                               ; preds = %47, %43
  %59 = phi i1 [ false, %43 ], [ %57, %47 ]
  br i1 %59, label %60, label %74

60:                                               ; preds = %58
  %61 = load i64*, i64** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  store i64 %65, i64* %70, align 8
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 4
  store i32 %73, i32* %10, align 4
  br label %43

74:                                               ; preds = %58
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  store i64 %76, i64* %81, align 8
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  br label %25

85:                                               ; preds = %25
  br label %86

86:                                               ; preds = %85, %17
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %146, %86
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %149

93:                                               ; preds = %89
  %94 = load i64*, i64** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %11, align 4
  %100 = load i64*, i64** %6, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %12, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %135, %93
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i64, i64* %12, align 8
  %113 = load i64*, i64** %6, align 8
  %114 = load i64*, i64** %5, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i64, i64* %113, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ugt i64 %112, %120
  br label %122

122:                                              ; preds = %111, %107
  %123 = phi i1 [ false, %107 ], [ %121, %111 ]
  br i1 %123, label %124, label %138

124:                                              ; preds = %122
  %125 = load i64*, i64** %5, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %5, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %130, i64 %133
  store i64 %129, i64* %134, align 8
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %107

138:                                              ; preds = %122
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64*, i64** %5, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  store i64 %140, i64* %145, align 8
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %9, align 4
  br label %89

149:                                              ; preds = %16, %89
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
