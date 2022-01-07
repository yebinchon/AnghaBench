; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_is_valid_width.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_is_valid_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V4L2_STD_PAL_BG = common dso_local global i64 0, align 8
@V4L2_STD_NTSC_M = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_valid_width(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @V4L2_STD_PAL_BG, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 352
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 720
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9
  store i32 1, i32* %3, align 4
  br label %33

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @V4L2_STD_NTSC_M, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 320
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 352
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 720
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21
  store i32 1, i32* %3, align 4
  br label %33

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %30, %16, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
