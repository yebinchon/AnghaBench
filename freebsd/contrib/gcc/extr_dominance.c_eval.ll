; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_eval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_info = type { i64*, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dom_info*, i64)* @eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval(%struct.dom_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dom_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dom_info* %0, %struct.dom_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %8 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %17 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  br label %78

22:                                               ; preds = %2
  %23 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %24 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @compress(%struct.dom_info* %31, i64 %32)
  %34 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %35 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %30, %22
  %41 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %42 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %45 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %43, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %53 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %56 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %54, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %51, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %40
  %65 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %66 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %3, align 8
  br label %78

71:                                               ; preds = %40
  %72 = load %struct.dom_info*, %struct.dom_info** %4, align 8
  %73 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %71, %64, %15
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i32 @compress(%struct.dom_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
