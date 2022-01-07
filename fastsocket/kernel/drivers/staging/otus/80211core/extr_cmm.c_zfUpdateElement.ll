; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfUpdateElement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfUpdateElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfUpdateElement(i32* %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %112, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %117

16:                                               ; preds = %12
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %112

30:                                               ; preds = %16
  %31 = load i64*, i64** %9, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %30
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64*, i64** %9, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 2
  %45 = call i32 @zfMemoryMove(i64* %39, i64* %40, i64 %44)
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64*, i64** %9, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load i64, i64* %11, align 8
  %64 = sub nsw i64 %62, %63
  %65 = sub nsw i64 %64, 2
  %66 = call i32 @zfMemoryMove(i64* %53, i64* %59, i64 %65)
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = sub nsw i64 %67, %72
  store i64 %73, i64* %5, align 8
  br label %119

74:                                               ; preds = %30
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64*, i64** %9, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  %83 = load i64*, i64** %7, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = getelementptr inbounds i64, i64* %87, i64 2
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %10, align 8
  %91 = sub nsw i64 %89, %90
  %92 = load i64, i64* %11, align 8
  %93 = sub nsw i64 %91, %92
  %94 = sub nsw i64 %93, 2
  %95 = call i32 @zfMemoryMove(i64* %82, i64* %88, i64 %94)
  %96 = load i64*, i64** %7, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64*, i64** %9, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 2
  %104 = call i32 @zfMemoryMove(i64* %98, i64* %99, i64 %103)
  %105 = load i64, i64* %8, align 8
  %106 = load i64*, i64** %9, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = sub nsw i64 %108, %109
  %111 = add nsw i64 %105, %110
  store i64 %111, i64* %5, align 8
  br label %119

112:                                              ; preds = %16
  %113 = load i64, i64* %11, align 8
  %114 = add nsw i64 %113, 2
  %115 = load i64, i64* %10, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %10, align 8
  br label %12

117:                                              ; preds = %12
  %118 = load i64, i64* %8, align 8
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %117, %74, %36
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local i32 @zfMemoryMove(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
