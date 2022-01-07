; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_mode_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_mode_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l2cap_feat_mask = common dso_local global i32 0, align 4
@enable_ertm = common dso_local global i64 0, align 8
@L2CAP_FEAT_ERTM = common dso_local global i32 0, align 4
@L2CAP_FEAT_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @l2cap_mode_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_mode_supported(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @l2cap_feat_mask, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* @enable_ertm, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @L2CAP_FEAT_ERTM, align 4
  %12 = load i32, i32* @L2CAP_FEAT_STREAMING, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %30 [
    i32 129, label %18
    i32 128, label %24
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @L2CAP_FEAT_ERTM, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %16
  %25 = load i32, i32* @L2CAP_FEAT_STREAMING, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
