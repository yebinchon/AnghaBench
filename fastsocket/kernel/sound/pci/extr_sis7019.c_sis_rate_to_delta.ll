; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_sis7019.c_sis_rate_to_delta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_sis7019.c_sis_rate_to_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sis_rate_to_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_rate_to_delta(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 44100
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 3763, i32* %3, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 8000
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 683, i32* %3, align 4
  br label %22

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 48000
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 4096, i32* %3, align 4
  br label %21

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 %16, 12
  %18 = add i32 %17, 24000
  %19 = udiv i32 %18, 48000
  %20 = and i32 %19, 65535
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %14
  br label %22

22:                                               ; preds = %21, %10
  br label %23

23:                                               ; preds = %22, %6
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
