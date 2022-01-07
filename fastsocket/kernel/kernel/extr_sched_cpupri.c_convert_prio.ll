; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_cpupri.c_convert_prio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_cpupri.c_convert_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUPRI_INVALID = common dso_local global i32 0, align 4
@MAX_PRIO = common dso_local global i32 0, align 4
@CPUPRI_IDLE = common dso_local global i32 0, align 4
@MAX_RT_PRIO = common dso_local global i32 0, align 4
@CPUPRI_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @convert_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_prio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @CPUPRI_INVALID, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @CPUPRI_INVALID, align 4
  store i32 %8, i32* %3, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @MAX_PRIO, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @CPUPRI_IDLE, align 4
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @MAX_RT_PRIO, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @CPUPRI_NORMAL, align 4
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @MAX_RT_PRIO, align 4
  %23 = load i32, i32* %2, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %19
  br label %27

27:                                               ; preds = %26, %13
  br label %28

28:                                               ; preds = %27, %7
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
