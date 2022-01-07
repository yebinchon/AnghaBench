; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_estimate_one_automaton_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_estimate_one_automaton_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@description = common dso_local global %struct.TYPE_6__* null, align 8
@dm_unit = common dso_local global i64 0, align 8
@automata_num = common dso_local global i32 0, align 4
@MAX_FLOATING_POINT_VALUE_FOR_AUTOMATON_BOUND = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double ()* @estimate_one_automaton_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @estimate_one_automaton_bound() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double 1.000000e+00, double* %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %52, %0
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %1, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @dm_unit, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %11
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = call %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__* %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %30 = call %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__* %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %28, %32
  %34 = sitofp i64 %33 to double
  %35 = fadd double %34, 1.000000e+00
  %36 = fptosi double %35 to i64
  %37 = call i32 @log(i64 %36)
  %38 = load i32, i32* @automata_num, align 4
  %39 = sdiv i32 %37, %38
  %40 = call double @exp(i32 %39)
  store double %40, double* %3, align 8
  %41 = load double, double* @MAX_FLOATING_POINT_VALUE_FOR_AUTOMATON_BOUND, align 8
  %42 = load double, double* %3, align 8
  %43 = fdiv double %41, %42
  %44 = load double, double* %2, align 8
  %45 = fcmp ogt double %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load double, double* %3, align 8
  %48 = load double, double* %2, align 8
  %49 = fmul double %48, %47
  store double %49, double* %2, align 8
  br label %50

50:                                               ; preds = %46, %24
  br label %51

51:                                               ; preds = %50, %11
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %5

55:                                               ; preds = %5
  %56 = load double, double* %2, align 8
  ret double %56
}

declare dso_local double @exp(i32) #1

declare dso_local i32 @log(i64) #1

declare dso_local %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
