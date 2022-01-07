; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_dvi_patch_skew_dvp_low.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_dvi_patch_skew_dvp_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@CR99 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i64 0, align 8
@BIT1 = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dvi_patch_skew_dvp_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvi_patch_skew_dvp_low() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %35 [
    i32 130, label %6
    i32 128, label %13
    i32 129, label %24
  ]

6:                                                ; preds = %0
  %7 = load i32, i32* @CR99, align 4
  %8 = load i32, i32* @VIACR, align 4
  %9 = load i64, i64* @BIT0, align 8
  %10 = load i64, i64* @BIT1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @viafb_write_reg_mask(i32 %7, i32 %8, i32 3, i64 %11)
  br label %36

13:                                               ; preds = %0
  %14 = load i32, i32* @CR99, align 4
  %15 = load i32, i32* @VIACR, align 4
  %16 = load i64, i64* @BIT0, align 8
  %17 = load i64, i64* @BIT1, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @BIT2, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @BIT3, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @viafb_write_reg_mask(i32 %14, i32 %15, i32 8, i64 %22)
  br label %36

24:                                               ; preds = %0
  %25 = load i32, i32* @CR99, align 4
  %26 = load i32, i32* @VIACR, align 4
  %27 = load i64, i64* @BIT0, align 8
  %28 = load i64, i64* @BIT1, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @BIT2, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @BIT3, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @viafb_write_reg_mask(i32 %25, i32 %26, i32 15, i64 %33)
  br label %36

35:                                               ; preds = %0
  br label %36

36:                                               ; preds = %35, %24, %13, %6
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
