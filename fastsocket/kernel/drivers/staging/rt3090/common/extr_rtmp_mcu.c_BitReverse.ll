; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/common/extr_rtmp_mcu.c_BitReverse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/common/extr_rtmp_mcu.c_BitReverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @BitReverse(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  store i8 0, i8* %4, align 1
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i8, i8* %2, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %12, 128
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %4, align 1
  br label %15

15:                                               ; preds = %10, %5
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 7
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %31

19:                                               ; preds = %15
  %20 = load i8, i8* %2, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 1
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %2, align 1
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = ashr i32 %25, 1
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %4, align 1
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %5

31:                                               ; preds = %18
  %32 = load i8, i8* %4, align 1
  ret i8 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
