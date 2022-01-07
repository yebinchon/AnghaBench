; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_rtsc_x2y.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_rtsc_x2y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.runtime_sc = type { i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.runtime_sc*, i64)* @rtsc_x2y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtsc_x2y(%struct.runtime_sc* %0, i64 %1) #0 {
  %3 = alloca %struct.runtime_sc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.runtime_sc* %0, %struct.runtime_sc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %8 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %13 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %62

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %18 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %21 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = icmp sle i64 %16, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %15
  %26 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %27 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %31 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %35 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @seg_x2y(i64 %33, i32 %36)
  %38 = add nsw i64 %28, %37
  store i64 %38, i64* %5, align 8
  br label %61

39:                                               ; preds = %15
  %40 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %41 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %44 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %49 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %53 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %57 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @seg_x2y(i64 %55, i32 %58)
  %60 = add nsw i64 %46, %59
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %39, %25
  br label %62

62:                                               ; preds = %61, %11
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i64 @seg_x2y(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
