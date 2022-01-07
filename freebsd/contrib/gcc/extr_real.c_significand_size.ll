; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_significand_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_significand_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32, double, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @significand_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.real_format* @REAL_MODE_FORMAT(i32 %6)
  store %struct.real_format* %7, %struct.real_format** %4, align 8
  %8 = load %struct.real_format*, %struct.real_format** %4, align 8
  %9 = icmp eq %struct.real_format* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.real_format*, %struct.real_format** %4, align 8
  %13 = getelementptr inbounds %struct.real_format, %struct.real_format* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  store double 0x400A934F0A294EAE, double* %5, align 8
  %17 = load %struct.real_format*, %struct.real_format** %4, align 8
  %18 = getelementptr inbounds %struct.real_format, %struct.real_format* %17, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = load double, double* %5, align 8
  %21 = fmul double %19, %20
  %22 = fptosi double %21 to i32
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %11
  %24 = load %struct.real_format*, %struct.real_format** %4, align 8
  %25 = getelementptr inbounds %struct.real_format, %struct.real_format* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = load %struct.real_format*, %struct.real_format** %4, align 8
  %28 = getelementptr inbounds %struct.real_format, %struct.real_format* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sitofp i32 %29 to double
  %31 = fmul double %26, %30
  %32 = fptosi double %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %23, %16, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.real_format* @REAL_MODE_FORMAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
