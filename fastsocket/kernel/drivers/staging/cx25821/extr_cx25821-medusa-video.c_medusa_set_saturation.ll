; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_set_saturation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_set_saturation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32* }

@VIDEO_PROCAMP_MAX = common dso_local global i32 0, align 4
@VIDEO_PROCAMP_MIN = common dso_local global i32 0, align 4
@UNSIGNED_BYTE_MIN = common dso_local global i32 0, align 4
@UNSIGNED_BYTE_MAX = common dso_local global i32 0, align 4
@VDEC_A_USAT_CTRL = common dso_local global i64 0, align 8
@VDEC_A_VSAT_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @medusa_set_saturation(%struct.cx25821_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25821_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %13 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @VIDEO_PROCAMP_MAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @VIDEO_PROCAMP_MIN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %3
  %23 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %24 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  store i32 -1, i32* %4, align 4
  br label %91

26:                                               ; preds = %18
  %27 = load i32, i32* @VIDEO_PROCAMP_MIN, align 4
  %28 = load i32, i32* @VIDEO_PROCAMP_MAX, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UNSIGNED_BYTE_MIN, align 4
  %31 = load i32, i32* @UNSIGNED_BYTE_MAX, align 4
  %32 = call i32 @mapM(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32* %9)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %34 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i64, i64* @VDEC_A_USAT_CTRL, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 512, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @cx25821_i2c_read(i32* %36, i64 %41, i32* %11)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, -256
  store i32 %44, i32* %10, align 4
  %45 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %46 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i64, i64* @VDEC_A_USAT_CTRL, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 512, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @cx25821_i2c_write(i32* %48, i64 %53, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %61 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i64, i64* @VDEC_A_VSAT_CTRL, align 8
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 512, %65
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = call i32 @cx25821_i2c_read(i32* %63, i64 %68, i32* %11)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, -256
  store i32 %71, i32* %10, align 4
  %72 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %73 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i64, i64* @VDEC_A_VSAT_CTRL, align 8
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 512, %77
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @cx25821_i2c_write(i32* %75, i64 %80, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %88 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %26, %22
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mapM(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i64, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
