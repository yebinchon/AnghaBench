; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_trace__fprintf_tstamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_trace__fprintf_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i64 }

@NSEC_PER_MSEC = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [8 x i8] c"%10.3f \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.trace*, i64, i32*)* @trace__fprintf_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trace__fprintf_tstamp(%struct.trace* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.trace*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  store %struct.trace* %0, %struct.trace** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.trace*, %struct.trace** %4, align 8
  %10 = getelementptr inbounds %struct.trace, %struct.trace* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = sitofp i64 %12 to double
  %14 = load double, double* @NSEC_PER_MSEC, align 8
  %15 = fdiv double %13, %14
  store double %15, double* %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load double, double* %7, align 8
  %18 = call i64 @fprintf(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %17)
  ret i64 %18
}

declare dso_local i64 @fprintf(i32*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
