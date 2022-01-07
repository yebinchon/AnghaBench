; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_use_sched_lookahead.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_use_sched_lookahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sparc_cpu = common dso_local global i32 0, align 4
@PROCESSOR_NIAGARA = common dso_local global i32 0, align 4
@PROCESSOR_ULTRASPARC = common dso_local global i32 0, align 4
@PROCESSOR_ULTRASPARC3 = common dso_local global i32 0, align 4
@PROCESSOR_SUPERSPARC = common dso_local global i32 0, align 4
@PROCESSOR_HYPERSPARC = common dso_local global i32 0, align 4
@PROCESSOR_SPARCLITE86X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sparc_use_sched_lookahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_use_sched_lookahead() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @sparc_cpu, align 4
  %3 = load i32, i32* @PROCESSOR_NIAGARA, align 4
  %4 = icmp eq i32 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %30

6:                                                ; preds = %0
  %7 = load i32, i32* @sparc_cpu, align 4
  %8 = load i32, i32* @PROCESSOR_ULTRASPARC, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @sparc_cpu, align 4
  %12 = load i32, i32* @PROCESSOR_ULTRASPARC3, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  store i32 4, i32* %1, align 4
  br label %30

15:                                               ; preds = %10
  %16 = load i32, i32* @sparc_cpu, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @PROCESSOR_SUPERSPARC, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* @PROCESSOR_HYPERSPARC, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @PROCESSOR_SPARCLITE86X, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = and i32 %17, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 3, i32* %1, align 4
  br label %30

29:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %28, %14, %5
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
