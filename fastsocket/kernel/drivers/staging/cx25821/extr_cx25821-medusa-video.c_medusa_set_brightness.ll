; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_set_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32* }

@VIDEO_PROCAMP_MAX = common dso_local global i32 0, align 4
@VIDEO_PROCAMP_MIN = common dso_local global i32 0, align 4
@SIGNED_BYTE_MIN = common dso_local global i32 0, align 4
@SIGNED_BYTE_MAX = common dso_local global i32 0, align 4
@VDEC_A_BRITE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @medusa_set_brightness(%struct.cx25821_dev* %0, i32 %1, i32 %2) #0 {
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
  br label %66

26:                                               ; preds = %18
  %27 = load i32, i32* @VIDEO_PROCAMP_MIN, align 4
  %28 = load i32, i32* @VIDEO_PROCAMP_MAX, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SIGNED_BYTE_MIN, align 4
  %31 = load i32, i32* @SIGNED_BYTE_MAX, align 4
  %32 = call i32 @mapM(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32* %9)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @convert_to_twos(i32 %33, i32 8)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %36 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i64, i64* @VDEC_A_BRITE_CTRL, align 8
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 512, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = call i32 @cx25821_i2c_read(i32* %38, i64 %43, i32* %11)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, -256
  store i32 %46, i32* %10, align 4
  %47 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %48 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i64, i64* @VDEC_A_BRITE_CTRL, align 8
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 512, %52
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @cx25821_i2c_write(i32* %50, i64 %55, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %63 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %26, %22
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mapM(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @convert_to_twos(i32, i32) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i64, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
