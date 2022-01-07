; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_dvi_patch_skew_dvp0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_dvi_patch_skew_dvp0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SR1B = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i64 0, align 8
@SR2A = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i64 0, align 8
@viaparinfo = common dso_local global %struct.TYPE_6__* null, align 8
@CR96 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dvi_patch_skew_dvp0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvi_patch_skew_dvp0() #0 {
  %1 = load i32, i32* @SR1B, align 4
  %2 = load i32, i32* @VIASR, align 4
  %3 = load i64, i64* @BIT1, align 8
  %4 = call i32 @viafb_write_reg_mask(i32 %1, i32 %2, i32 0, i64 %3)
  %5 = load i32, i32* @SR2A, align 4
  %6 = load i32, i32* @VIASR, align 4
  %7 = load i64, i64* @BIT4, align 8
  %8 = call i32 @viafb_write_reg_mask(i32 %5, i32 %6, i32 0, i64 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %66 [
    i32 129, label %14
    i32 128, label %47
  ]

14:                                               ; preds = %0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1600
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1200
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load i32, i32* @CR96, align 4
  %30 = load i32, i32* @VIACR, align 4
  %31 = load i64, i64* @BIT0, align 8
  %32 = load i64, i64* @BIT1, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @BIT2, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @viafb_write_reg_mask(i32 %29, i32 %30, i32 3, i64 %35)
  br label %46

37:                                               ; preds = %21, %14
  %38 = load i32, i32* @CR96, align 4
  %39 = load i32, i32* @VIACR, align 4
  %40 = load i64, i64* @BIT0, align 8
  %41 = load i64, i64* @BIT1, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* @BIT2, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @viafb_write_reg_mask(i32 %38, i32 %39, i32 7, i64 %44)
  br label %46

46:                                               ; preds = %37, %28
  br label %67

47:                                               ; preds = %0
  %48 = load i32, i32* @CR96, align 4
  %49 = load i32, i32* @VIACR, align 4
  %50 = load i64, i64* @BIT0, align 8
  %51 = load i64, i64* @BIT1, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* @BIT2, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* @BIT3, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @viafb_write_reg_mask(i32 %48, i32 %49, i32 7, i64 %56)
  %58 = load i32, i32* @SR1B, align 4
  %59 = load i32, i32* @VIASR, align 4
  %60 = load i64, i64* @BIT1, align 8
  %61 = call i32 @viafb_write_reg_mask(i32 %58, i32 %59, i32 2, i64 %60)
  %62 = load i32, i32* @SR2A, align 4
  %63 = load i32, i32* @VIASR, align 4
  %64 = load i64, i64* @BIT4, align 8
  %65 = call i32 @viafb_write_reg_mask(i32 %62, i32 %63, i32 16, i64 %64)
  br label %67

66:                                               ; preds = %0
  br label %67

67:                                               ; preds = %66, %47, %46
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
