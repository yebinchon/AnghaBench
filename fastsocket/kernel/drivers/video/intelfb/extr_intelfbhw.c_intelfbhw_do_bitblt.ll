; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_do_bitblt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_do_bitblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32 }

@XY_SRC_COPY_BLT_CMD = common dso_local global i32 0, align 4
@PITCH_SHIFT = common dso_local global i32 0, align 4
@SRC_ROP_GXCOPY = common dso_local global i32 0, align 4
@ROP_SHIFT = common dso_local global i32 0, align 4
@WIDTH_SHIFT = common dso_local global i32 0, align 4
@HEIGHT_SHIFT = common dso_local global i32 0, align 4
@COLOR_DEPTH_8 = common dso_local global i32 0, align 4
@COLOR_DEPTH_16 = common dso_local global i32 0, align 4
@COLOR_DEPTH_32 = common dso_local global i32 0, align 4
@WRITE_ALPHA = common dso_local global i32 0, align 4
@WRITE_RGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfbhw_do_bitblt(%struct.intelfb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %27 = load i32, i32* @XY_SRC_COPY_BLT_CMD, align 4
  store i32 %27, i32* %19, align 4
  %28 = load %struct.intelfb_info*, %struct.intelfb_info** %10, align 8
  %29 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @PITCH_SHIFT, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %21, align 4
  %34 = load %struct.intelfb_info*, %struct.intelfb_info** %10, align 8
  %35 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %22, align 4
  %37 = load i32, i32* @SRC_ROP_GXCOPY, align 4
  %38 = load i32, i32* @ROP_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @PITCH_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @WIDTH_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @HEIGHT_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  store i32 %50, i32* %24, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @WIDTH_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* @HEIGHT_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %55, %60
  store i32 %61, i32* %25, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @WIDTH_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @HEIGHT_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %64, %67
  store i32 %68, i32* %26, align 4
  %69 = load i32, i32* %18, align 4
  switch i32 %69, label %87 [
    i32 8, label %70
    i32 16, label %74
    i32 32, label %78
  ]

70:                                               ; preds = %9
  %71 = load i32, i32* @COLOR_DEPTH_8, align 4
  %72 = load i32, i32* %23, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %23, align 4
  br label %87

74:                                               ; preds = %9
  %75 = load i32, i32* @COLOR_DEPTH_16, align 4
  %76 = load i32, i32* %23, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %23, align 4
  br label %87

78:                                               ; preds = %9
  %79 = load i32, i32* @COLOR_DEPTH_32, align 4
  %80 = load i32, i32* %23, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %23, align 4
  %82 = load i32, i32* @WRITE_ALPHA, align 4
  %83 = load i32, i32* @WRITE_RGB, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %19, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %19, align 4
  br label %87

87:                                               ; preds = %9, %78, %74, %70
  %88 = call i32 @START_RING(i32 8)
  %89 = load i32, i32* %19, align 4
  %90 = call i32 @OUT_RING(i32 %89)
  %91 = load i32, i32* %23, align 4
  %92 = call i32 @OUT_RING(i32 %91)
  %93 = load i32, i32* %24, align 4
  %94 = call i32 @OUT_RING(i32 %93)
  %95 = load i32, i32* %25, align 4
  %96 = call i32 @OUT_RING(i32 %95)
  %97 = load i32, i32* %20, align 4
  %98 = call i32 @OUT_RING(i32 %97)
  %99 = load i32, i32* %26, align 4
  %100 = call i32 @OUT_RING(i32 %99)
  %101 = load i32, i32* %21, align 4
  %102 = call i32 @OUT_RING(i32 %101)
  %103 = load i32, i32* %22, align 4
  %104 = call i32 @OUT_RING(i32 %103)
  %105 = call i32 (...) @ADVANCE_RING()
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
