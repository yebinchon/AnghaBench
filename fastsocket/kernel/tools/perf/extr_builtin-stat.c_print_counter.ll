; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_print_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_print_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { %struct.TYPE_7__*, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double, double, double }
%struct.TYPE_8__ = type { i8** }

@output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CPU%*d%s%*s%s%*s\00", align 1
@csv_output = common dso_local global i64 0, align 8
@csv_sep = common dso_local global i8* null, align 8
@CNTR_NOT_COUNTED = common dso_local global i32 0, align 4
@CNTR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"  (%.2f%%)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_evsel*)* @print_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_counter(%struct.perf_evsel* %0) #0 {
  %2 = alloca %struct.perf_evsel*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %135, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %10 = call i32 @perf_evsel__nr_cpus(%struct.perf_evsel* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %138

12:                                               ; preds = %7
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %14 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  store double %22, double* %5, align 8
  %23 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %24 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  store double %32, double* %3, align 8
  %33 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %34 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load double, double* %41, align 8
  store double %42, double* %4, align 8
  %43 = load double, double* %4, align 8
  %44 = fcmp oeq double %43, 0.000000e+00
  br i1 %44, label %48, label %45

45:                                               ; preds = %12
  %46 = load double, double* %3, align 8
  %47 = fcmp oeq double %46, 0.000000e+00
  br i1 %47, label %48, label %101

48:                                               ; preds = %45, %12
  %49 = load i32, i32* @output, align 4
  %50 = load i64, i64* @csv_output, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 -4
  %54 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %55 = call %struct.TYPE_8__* @perf_evsel__cpus(%struct.perf_evsel* %54)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** @csv_sep, align 8
  %63 = load i64, i64* @csv_output, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 18
  %67 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %68 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %48
  %72 = load i32, i32* @CNTR_NOT_COUNTED, align 4
  br label %75

73:                                               ; preds = %48
  %74 = load i32, i32* @CNTR_NOT_SUPPORTED, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load i8*, i8** @csv_sep, align 8
  %78 = load i64, i64* @csv_output, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 0, i32 -24
  %82 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %83 = call i32 @perf_evsel__name(%struct.perf_evsel* %82)
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %61, i8* %62, i32 %66, i32 %76, i8* %77, i32 %81, i32 %83)
  %85 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %86 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = icmp ne %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %75
  %90 = load i32, i32* @output, align 4
  %91 = load i8*, i8** @csv_sep, align 8
  %92 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %93 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %91, i32 %96)
  br label %98

98:                                               ; preds = %89, %75
  %99 = load i32, i32* @output, align 4
  %100 = call i32 @fputc(i8 signext 10, i32 %99)
  br label %135

101:                                              ; preds = %45
  %102 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %103 = call i64 @nsec_counter(%struct.perf_evsel* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %108 = load double, double* %5, align 8
  %109 = call i32 @nsec_printout(i32 %106, %struct.perf_evsel* %107, double %108)
  br label %115

110:                                              ; preds = %101
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %113 = load double, double* %5, align 8
  %114 = call i32 @abs_printout(i32 %111, %struct.perf_evsel* %112, double %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i64, i64* @csv_output, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %115
  %119 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %120 = call i32 @print_noise(%struct.perf_evsel* %119, double 1.000000e+00)
  %121 = load double, double* %4, align 8
  %122 = load double, double* %3, align 8
  %123 = fcmp une double %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i32, i32* @output, align 4
  %126 = load double, double* %4, align 8
  %127 = fmul double 1.000000e+02, %126
  %128 = load double, double* %3, align 8
  %129 = fdiv double %127, %128
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double %129)
  br label %131

131:                                              ; preds = %124, %118
  br label %132

132:                                              ; preds = %131, %115
  %133 = load i32, i32* @output, align 4
  %134 = call i32 @fputc(i8 signext 10, i32 %133)
  br label %135

135:                                              ; preds = %132, %98
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %7

138:                                              ; preds = %7
  ret void
}

declare dso_local i32 @perf_evsel__nr_cpus(%struct.perf_evsel*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @perf_evsel__cpus(%struct.perf_evsel*) #1

declare dso_local i32 @perf_evsel__name(%struct.perf_evsel*) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i64 @nsec_counter(%struct.perf_evsel*) #1

declare dso_local i32 @nsec_printout(i32, %struct.perf_evsel*, double) #1

declare dso_local i32 @abs_printout(i32, %struct.perf_evsel*, double) #1

declare dso_local i32 @print_noise(%struct.perf_evsel*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
