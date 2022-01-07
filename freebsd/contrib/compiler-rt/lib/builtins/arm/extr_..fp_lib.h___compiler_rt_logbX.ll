; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/arm/extr_..fp_lib.h___compiler_rt_logbX.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/arm/extr_..fp_lib.h___compiler_rt_logbX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exponentMask = common dso_local global i32 0, align 4
@significandBits = common dso_local global i32 0, align 4
@maxExponent = common dso_local global i32 0, align 4
@signBit = common dso_local global i32 0, align 4
@infRep = common dso_local global i32 0, align 4
@exponentBias = common dso_local global i32 0, align 4
@absMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @__compiler_rt_logbX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @__compiler_rt_logbX(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = call i32 @toRep(double %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @exponentMask, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @significandBits, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @maxExponent, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @signBit, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load double, double* %3, align 8
  %24 = load double, double* %3, align 8
  %25 = fcmp une double %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %17
  %27 = load double, double* %3, align 8
  store double %27, double* %2, align 8
  br label %65

28:                                               ; preds = %22
  %29 = load double, double* %3, align 8
  %30 = fneg double %29
  store double %30, double* %2, align 8
  br label %65

31:                                               ; preds = %1
  %32 = load double, double* %3, align 8
  %33 = fcmp oeq double %32, 0.000000e+00
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @infRep, align 4
  %36 = load i32, i32* @signBit, align 4
  %37 = or i32 %35, %36
  %38 = call double @fromRep(i32 %37)
  store double %38, double* %2, align 8
  br label %65

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @exponentBias, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sitofp i32 %46 to double
  store double %47, double* %2, align 8
  br label %65

48:                                               ; preds = %40
  %49 = load i32, i32* @absMask, align 4
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = call i32 @normalize(i32* %4)
  %53 = sub nsw i32 1, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @exponentMask, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @significandBits, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @exponentBias, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sitofp i32 %63 to double
  store double %64, double* %2, align 8
  br label %65

65:                                               ; preds = %48, %43, %34, %28, %26
  %66 = load double, double* %2, align 8
  ret double %66
}

declare dso_local i32 @toRep(double) #1

declare dso_local double @fromRep(i32) #1

declare dso_local i32 @normalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
