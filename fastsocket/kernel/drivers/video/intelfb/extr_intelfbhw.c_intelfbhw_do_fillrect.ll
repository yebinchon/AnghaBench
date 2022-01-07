; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_do_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_do_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32, i32, i32, i32 }

@COLOR_BLT_CMD = common dso_local global i32 0, align 4
@ROP_SHIFT = common dso_local global i32 0, align 4
@HEIGHT_SHIFT = common dso_local global i32 0, align 4
@WIDTH_SHIFT = common dso_local global i32 0, align 4
@COLOR_DEPTH_8 = common dso_local global i32 0, align 4
@COLOR_DEPTH_16 = common dso_local global i32 0, align 4
@COLOR_DEPTH_32 = common dso_local global i32 0, align 4
@WRITE_ALPHA = common dso_local global i32 0, align 4
@WRITE_RGB = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfbhw_do_fillrect(%struct.intelfb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.intelfb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %24 = load i32, i32* @COLOR_BLT_CMD, align 4
  store i32 %24, i32* %19, align 4
  %25 = load %struct.intelfb_info*, %struct.intelfb_info** %10, align 8
  %26 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %16, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %17, align 4
  %33 = sdiv i32 %32, 8
  %34 = mul nsw i32 %31, %33
  %35 = add nsw i32 %30, %34
  %36 = add nsw i32 %27, %35
  store i32 %36, i32* %20, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @ROP_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %16, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @HEIGHT_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %17, align 4
  %47 = sdiv i32 %46, 8
  %48 = mul nsw i32 %45, %47
  %49 = load i32, i32* @WIDTH_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %44, %50
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %17, align 4
  switch i32 %53, label %71 [
    i32 8, label %54
    i32 16, label %58
    i32 32, label %62
  ]

54:                                               ; preds = %9
  %55 = load i32, i32* @COLOR_DEPTH_8, align 4
  %56 = load i32, i32* %21, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %21, align 4
  br label %71

58:                                               ; preds = %9
  %59 = load i32, i32* @COLOR_DEPTH_16, align 4
  %60 = load i32, i32* %21, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %21, align 4
  br label %71

62:                                               ; preds = %9
  %63 = load i32, i32* @COLOR_DEPTH_32, align 4
  %64 = load i32, i32* %21, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* @WRITE_ALPHA, align 4
  %67 = load i32, i32* @WRITE_RGB, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %19, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %9, %62, %58, %54
  %72 = call i32 @START_RING(i32 6)
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @OUT_RING(i32 %73)
  %75 = load i32, i32* %21, align 4
  %76 = call i32 @OUT_RING(i32 %75)
  %77 = load i32, i32* %22, align 4
  %78 = call i32 @OUT_RING(i32 %77)
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @OUT_RING(i32 %79)
  %81 = load i32, i32* %23, align 4
  %82 = call i32 @OUT_RING(i32 %81)
  %83 = load i32, i32* @MI_NOOP, align 4
  %84 = call i32 @OUT_RING(i32 %83)
  %85 = call i32 (...) @ADVANCE_RING()
  ret void
}

declare dso_local i32 @START_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
