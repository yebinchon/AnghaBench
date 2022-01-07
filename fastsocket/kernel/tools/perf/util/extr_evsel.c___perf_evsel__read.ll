; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c___perf_evsel__read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c___perf_evsel__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.perf_counts_values }
%struct.perf_counts_values = type { double, double, double }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__perf_evsel__read(%struct.perf_evsel* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.perf_counts_values*, align 8
  %14 = alloca %struct.perf_counts_values, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 3, i32 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %21 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store %struct.perf_counts_values* %23, %struct.perf_counts_values** %13, align 8
  %24 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %25 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %24, i32 0, i32 2
  store double 0.000000e+00, double* %25, align 8
  %26 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %27 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %26, i32 0, i32 1
  store double 0.000000e+00, double* %27, align 8
  %28 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %29 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %28, i32 0, i32 0
  store double 0.000000e+00, double* %29, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %85, %4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %88

34:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %81, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %84

39:                                               ; preds = %35
  %40 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @FD(%struct.perf_evsel* %40, i32 %41, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %81

46:                                               ; preds = %39
  %47 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @FD(%struct.perf_evsel* %47, i32 %48, i32 %49)
  %51 = load i64, i64* %10, align 8
  %52 = mul i64 %51, 8
  %53 = call i64 @readn(i64 %50, %struct.perf_counts_values* %14, i64 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @errno, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %141

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %14, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %62 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = fadd double %63, %60
  store double %64, double* %62, align 8
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %14, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %71 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = fadd double %72, %69
  store double %73, double* %71, align 8
  %74 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %14, i32 0, i32 2
  %75 = load double, double* %74, align 8
  %76 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %77 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %76, i32 0, i32 2
  %78 = load double, double* %77, align 8
  %79 = fadd double %78, %75
  store double %79, double* %77, align 8
  br label %80

80:                                               ; preds = %67, %58
  br label %81

81:                                               ; preds = %80, %45
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %35

84:                                               ; preds = %35
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %30

88:                                               ; preds = %30
  %89 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %90 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %135

95:                                               ; preds = %88
  %96 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %97 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %96, i32 0, i32 2
  %98 = load double, double* %97, align 8
  %99 = fcmp oeq double %98, 0.000000e+00
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %102 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 -1, i32* %104, align 8
  %105 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %106 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %105, i32 0, i32 0
  store double 0.000000e+00, double* %106, align 8
  store i32 0, i32* %5, align 4
  br label %141

107:                                              ; preds = %95
  %108 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %109 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %108, i32 0, i32 2
  %110 = load double, double* %109, align 8
  %111 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %112 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %111, i32 0, i32 1
  %113 = load double, double* %112, align 8
  %114 = fcmp olt double %110, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %107
  %116 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %117 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %121 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %120, i32 0, i32 0
  %122 = load double, double* %121, align 8
  %123 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %124 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %123, i32 0, i32 1
  %125 = load double, double* %124, align 8
  %126 = fmul double %122, %125
  %127 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %128 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %127, i32 0, i32 2
  %129 = load double, double* %128, align 8
  %130 = fdiv double %126, %129
  %131 = fadd double %130, 5.000000e-01
  %132 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %133 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %132, i32 0, i32 0
  store double %131, double* %133, align 8
  br label %134

134:                                              ; preds = %115, %107
  br label %140

135:                                              ; preds = %88
  %136 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %137 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %136, i32 0, i32 2
  store double 0.000000e+00, double* %137, align 8
  %138 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %139 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %138, i32 0, i32 1
  store double 0.000000e+00, double* %139, align 8
  br label %140

140:                                              ; preds = %135, %134
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %100, %55
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @FD(%struct.perf_evsel*, i32, i32) #1

declare dso_local i64 @readn(i64, %struct.perf_counts_values*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
