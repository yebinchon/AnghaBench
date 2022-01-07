; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_quantize_total.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_quantize_total.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@DTRACEOPT_AGGZOOM = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i64 0, align 8
@DTRACE_AGGZOOM_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, x86_fp80*)* @dt_quantize_total to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_quantize_total(%struct.TYPE_3__* %0, i64 %1, x86_fp80* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca x86_fp80*, align 8
  %7 = alloca x86_fp80, align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store x86_fp80* %2, x86_fp80** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = sitofp i64 %8 to x86_fp80
  %10 = call x86_fp80 @dt_fabsl(x86_fp80 %9)
  store x86_fp80 %10, x86_fp80* %7, align 16
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @DTRACEOPT_AGGZOOM, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load x86_fp80, x86_fp80* %7, align 16
  %21 = load x86_fp80*, x86_fp80** %6, align 8
  %22 = load x86_fp80, x86_fp80* %21, align 16
  %23 = fadd x86_fp80 %22, %20
  store x86_fp80 %23, x86_fp80* %21, align 16
  br label %37

24:                                               ; preds = %3
  %25 = load i32, i32* @DTRACE_AGGZOOM_MAX, align 4
  %26 = sdiv i32 1, %25
  %27 = sitofp i32 %26 to x86_fp80
  %28 = load x86_fp80, x86_fp80* %7, align 16
  %29 = fmul x86_fp80 %28, %27
  store x86_fp80 %29, x86_fp80* %7, align 16
  %30 = load x86_fp80*, x86_fp80** %6, align 8
  %31 = load x86_fp80, x86_fp80* %30, align 16
  %32 = load x86_fp80, x86_fp80* %7, align 16
  %33 = fcmp olt x86_fp80 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load x86_fp80, x86_fp80* %7, align 16
  %36 = load x86_fp80*, x86_fp80** %6, align 8
  store x86_fp80 %35, x86_fp80* %36, align 16
  br label %37

37:                                               ; preds = %19, %34, %24
  ret void
}

declare dso_local x86_fp80 @dt_fabsl(x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
