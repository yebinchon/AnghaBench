; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_alim1535_wdt.c_ali_settimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_alim1535_wdt.c_ali_settimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ali_timeout_bits = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ali_settimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali_settimer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %38

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 60
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, 64
  store i32 %14, i32* @ali_timeout_bits, align 4
  br label %35

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 3600
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 60
  %21 = or i32 %20, 128
  store i32 %21, i32* @ali_timeout_bits, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 18000
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = sdiv i32 %26, 300
  %28 = or i32 %27, 64
  %29 = or i32 %28, 128
  store i32 %29, i32* @ali_timeout_bits, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %18
  br label %35

35:                                               ; preds = %34, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* @timeout, align 4
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %30, %6
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
