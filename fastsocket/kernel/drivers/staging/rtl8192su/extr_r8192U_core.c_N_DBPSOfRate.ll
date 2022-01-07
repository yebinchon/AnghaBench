; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_N_DBPSOfRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_N_DBPSOfRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @N_DBPSOfRate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 24, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %13 [
    i32 60, label %5
    i32 90, label %6
    i32 120, label %7
    i32 180, label %8
    i32 240, label %9
    i32 360, label %10
    i32 480, label %11
    i32 540, label %12
  ]

5:                                                ; preds = %1
  store i32 24, i32* %3, align 4
  br label %14

6:                                                ; preds = %1
  store i32 36, i32* %3, align 4
  br label %14

7:                                                ; preds = %1
  store i32 48, i32* %3, align 4
  br label %14

8:                                                ; preds = %1
  store i32 72, i32* %3, align 4
  br label %14

9:                                                ; preds = %1
  store i32 96, i32* %3, align 4
  br label %14

10:                                               ; preds = %1
  store i32 144, i32* %3, align 4
  br label %14

11:                                               ; preds = %1
  store i32 192, i32* %3, align 4
  br label %14

12:                                               ; preds = %1
  store i32 216, i32* %3, align 4
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
