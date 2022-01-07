; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_write_firhv_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_write_firhv_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPC_VID1_BASE = common dso_local global i64 0, align 8
@DISPC_VID_FIR_COEF_HV0 = common dso_local global i64 0, align 8
@DISPC_VID2_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @write_firhv_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_firhv_reg(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i64, i64* @DISPC_VID1_BASE, align 8
  %12 = load i64, i64* @DISPC_VID_FIR_COEF_HV0, align 8
  %13 = add nsw i64 %11, %12
  store i64 %13, i64* %7, align 8
  br label %18

14:                                               ; preds = %3
  %15 = load i64, i64* @DISPC_VID2_BASE, align 8
  %16 = load i64, i64* @DISPC_VID_FIR_COEF_HV0, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @dispc_write_reg(i64 %23, i64 %24)
  ret void
}

declare dso_local i32 @dispc_write_reg(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
