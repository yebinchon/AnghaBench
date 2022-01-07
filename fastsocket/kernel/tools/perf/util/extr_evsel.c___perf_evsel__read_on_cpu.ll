; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c___perf_evsel__read_on_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c___perf_evsel__read_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.perf_counts_values* }
%struct.perf_counts_values = type { double, double, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__perf_evsel__read_on_cpu(%struct.perf_evsel* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_counts_values, align 8
  %11 = alloca i64, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 3, i32 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @FD(%struct.perf_evsel* %17, i32 %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %95

25:                                               ; preds = %4
  %26 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %27 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp eq %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i64 @perf_evsel__alloc_counts(%struct.perf_evsel* %31, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %95

39:                                               ; preds = %30, %25
  %40 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @FD(%struct.perf_evsel* %40, i32 %41, i32 %42)
  %44 = load i64, i64* %11, align 8
  %45 = mul i64 %44, 8
  %46 = call i64 @readn(i64 %43, %struct.perf_counts_values* %10, i64 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @errno, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %95

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %10, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = fcmp oeq double %56, 0.000000e+00
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %10, i32 0, i32 2
  store i64 0, i64* %59, align 8
  br label %80

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %10, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %10, i32 0, i32 1
  %64 = load double, double* %63, align 8
  %65 = fcmp olt double %62, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %10, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sitofp i64 %68 to double
  %70 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %10, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = fmul double %69, %71
  %73 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %10, i32 0, i32 0
  %74 = load double, double* %73, align 8
  %75 = fdiv double %72, %74
  %76 = fadd double %75, 5.000000e-01
  %77 = fptosi double %76 to i64
  %78 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %10, i32 0, i32 2
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %66, %60
  br label %80

80:                                               ; preds = %79, %58
  br label %84

81:                                               ; preds = %51
  %82 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %10, i32 0, i32 0
  store double 0.000000e+00, double* %82, align 8
  %83 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %10, i32 0, i32 1
  store double 0.000000e+00, double* %83, align 8
  br label %84

84:                                               ; preds = %81, %80
  %85 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %86 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.perf_counts_values*, %struct.perf_counts_values** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %89, i64 %91
  %93 = bitcast %struct.perf_counts_values* %92 to i8*
  %94 = bitcast %struct.perf_counts_values* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false)
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %84, %48, %36, %22
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @FD(%struct.perf_evsel*, i32, i32) #1

declare dso_local i64 @perf_evsel__alloc_counts(%struct.perf_evsel*, i32) #1

declare dso_local i64 @readn(i64, %struct.perf_counts_values*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
