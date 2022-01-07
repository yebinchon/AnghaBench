; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_rtsc_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_rtsc_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.runtime_sc = type { i64, i64, i64, i64 }
%struct.internal_sc = type { i64, i64, i64, i64 }

@SM_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.runtime_sc*, %struct.internal_sc*, i64, i64)* @rtsc_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsc_min(%struct.runtime_sc* %0, %struct.internal_sc* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.runtime_sc*, align 8
  %6 = alloca %struct.internal_sc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.runtime_sc* %0, %struct.runtime_sc** %5, align 8
  store %struct.internal_sc* %1, %struct.internal_sc** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %15 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %18 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %4
  %22 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @rtsc_x2y(%struct.runtime_sc* %22, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %131

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %32 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %35 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  br label %131

36:                                               ; preds = %4
  %37 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @rtsc_x2y(%struct.runtime_sc* %37, i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %131

44:                                               ; preds = %36
  %45 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %48 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i64 @rtsc_x2y(%struct.runtime_sc* %45, i64 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %55 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = icmp sge i64 %52, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %44
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %62 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %65 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %67 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %70 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %72 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %75 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %131

76:                                               ; preds = %44
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %8, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load i64, i64* @SM_SHIFT, align 8
  %81 = shl i64 %79, %80
  store i64 %81, i64* %11, align 8
  %82 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %83 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %86 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  store i64 %88, i64* %13, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @do_div(i64 %89, i64 %90)
  %92 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %93 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %96 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load i64, i64* %7, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %76
  %102 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %103 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %106 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load i64, i64* %7, align 8
  %110 = sub nsw i64 %108, %109
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %11, align 8
  br label %113

113:                                              ; preds = %101, %76
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %116 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @seg_x2y(i64 %114, i64 %117)
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %121 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %124 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %127 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %130 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %113, %59, %43, %29, %28
  ret void
}

declare dso_local i64 @rtsc_x2y(%struct.runtime_sc*, i64) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i64 @seg_x2y(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
