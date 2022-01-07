; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_enable_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_enable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DISPC_GFX_ATTRIBUTES = common dso_local global i64 0, align 8
@DISPC_VID1_BASE = common dso_local global i64 0, align 8
@DISPC_VID_ATTRIBUTES = common dso_local global i64 0, align 8
@DISPC_VID2_BASE = common dso_local global i64 0, align 8
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @omap_dispc_enable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dispc_enable_plane(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i64], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %8 = load i64, i64* @DISPC_GFX_ATTRIBUTES, align 8
  store i64 %8, i64* %7, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 1
  %10 = load i64, i64* @DISPC_VID1_BASE, align 8
  %11 = load i64, i64* @DISPC_VID_ATTRIBUTES, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %9, align 8
  %13 = getelementptr inbounds i64, i64* %9, i64 1
  %14 = load i64, i64* @DISPC_VID2_BASE, align 8
  %15 = load i64, i64* @DISPC_VID_ATTRIBUTES, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0, i32 0), align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %2
  %24 = call i32 @enable_lcd_clocks(i32 1)
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = call i32 @MOD_REG_FLD(i64 %28, i32 1, i32 %32)
  %34 = call i32 @enable_lcd_clocks(i32 0)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @enable_lcd_clocks(i32) #1

declare dso_local i32 @MOD_REG_FLD(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
