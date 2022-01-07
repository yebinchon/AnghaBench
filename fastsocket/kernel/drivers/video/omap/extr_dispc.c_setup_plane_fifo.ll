; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_setup_plane_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_setup_plane_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPC_GFX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@DISPC_VID1_BASE = common dso_local global i32 0, align 4
@DISPC_VID_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@DISPC_VID2_BASE = common dso_local global i32 0, align 4
@DISPC_GFX_FIFO_SIZE_STATUS = common dso_local global i32 0, align 4
@DISPC_VID_FIFO_SIZE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @setup_plane_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_plane_fifo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %11 = load i32, i32* @DISPC_GFX_FIFO_THRESHOLD, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @DISPC_VID1_BASE, align 4
  %14 = load i32, i32* @DISPC_VID_FIFO_THRESHOLD, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds i32, i32* %12, i64 1
  %17 = load i32, i32* @DISPC_VID2_BASE, align 4
  %18 = load i32, i32* @DISPC_VID_FIFO_THRESHOLD, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %21 = load i32, i32* @DISPC_GFX_FIFO_SIZE_STATUS, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @DISPC_VID1_BASE, align 4
  %24 = load i32, i32* @DISPC_VID_FIFO_SIZE_STATUS, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds i32, i32* %22, i64 1
  %27 = load i32, i32* @DISPC_VID2_BASE, align 4
  %28 = load i32, i32* @DISPC_VID_FIFO_SIZE_STATUS, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %26, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp sgt i32 %30, 2
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dispc_read_reg(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = call i32 @FLD_MASK(i32 0, i32 11)
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 3
  %47 = sdiv i32 %46, 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %8, align 4
  br label %55

49:                                               ; preds = %2
  %50 = load i32, i32* %9, align 4
  %51 = sdiv i32 %50, 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 3
  %54 = sdiv i32 %53, 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @FLD_MASK(i32 16, i32 12)
  %61 = call i32 @FLD_MASK(i32 0, i32 12)
  %62 = or i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @MOD_REG_FLD(i32 %59, i32 %62, i32 %66)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @FLD_MASK(i32, i32) #1

declare dso_local i32 @MOD_REG_FLD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
