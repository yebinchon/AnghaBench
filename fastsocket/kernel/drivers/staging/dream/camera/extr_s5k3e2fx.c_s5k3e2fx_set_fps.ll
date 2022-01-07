; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_s5k3e2fx.c_s5k3e2fx_set_fps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_s5k3e2fx.c_s5k3e2fx_set_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fps_cfg = type { i32 }

@s5k3e2fx_ctrl = common dso_local global %struct.TYPE_5__* null, align 8
@s5k3e2fx_client = common dso_local global %struct.TYPE_6__* null, align 8
@REG_FRAME_LENGTH_LINES_MSB = common dso_local global i32 0, align 4
@s5k3e2fx_reg_pat = common dso_local global %struct.TYPE_4__* null, align 8
@S_RES_PREVIEW = common dso_local global i64 0, align 8
@REG_FRAME_LENGTH_LINES_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fps_cfg*)* @s5k3e2fx_set_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s5k3e2fx_set_fps(%struct.fps_cfg* %0) #0 {
  %2 = alloca %struct.fps_cfg*, align 8
  %3 = alloca i64, align 8
  store %struct.fps_cfg* %0, %struct.fps_cfg** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.fps_cfg*, %struct.fps_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s5k3e2fx_client, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @REG_FRAME_LENGTH_LINES_MSB, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s5k3e2fx_reg_pat, align 8
  %14 = load i64, i64* @S_RES_PREVIEW, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s5k3e2fx_reg_pat, align 8
  %19 = load i64, i64* @S_RES_PREVIEW, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %17, %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = sdiv i32 %27, 1024
  %29 = and i32 %28, 65280
  %30 = ashr i32 %29, 8
  %31 = call i64 @s5k3e2fx_i2c_write_b(i32 %11, i32 %12, i32 %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %58

35:                                               ; preds = %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s5k3e2fx_client, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @REG_FRAME_LENGTH_LINES_LSB, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s5k3e2fx_reg_pat, align 8
  %41 = load i64, i64* @S_RES_PREVIEW, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s5k3e2fx_reg_pat, align 8
  %46 = load i64, i64* @S_RES_PREVIEW, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %44, %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = sdiv i32 %54, 1024
  %56 = and i32 %55, 65280
  %57 = call i64 @s5k3e2fx_i2c_write_b(i32 %38, i32 %39, i32 %56)
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %35, %34
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i64 @s5k3e2fx_i2c_write_b(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
