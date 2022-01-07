; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_set_videostandard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_set_videostandard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32* }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@V4L2_STD_PAL_DK = common dso_local global i32 0, align 4
@DENC_A_REG_4 = common dso_local global i32 0, align 4
@DENC_B_REG_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @medusa_set_videostandard(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  %6 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %15 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13, %1
  %21 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %22 = call i32 @medusa_initialize_pal(%struct.cx25821_dev* %21)
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %13
  %24 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %25 = call i32 @medusa_initialize_ntsc(%struct.cx25821_dev* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %28 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* @DENC_A_REG_4, align 4
  %32 = call i32 @cx25821_i2c_read(i32* %30, i32 %31, i32* %5)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @setBitAtPos(i32 %33, i32 4)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %36 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* @DENC_A_REG_4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @cx25821_i2c_write(i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %43 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* @DENC_B_REG_4, align 4
  %47 = call i32 @cx25821_i2c_read(i32* %45, i32 %46, i32* %5)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @setBitAtPos(i32 %48, i32 4)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %51 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* @DENC_B_REG_4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @cx25821_i2c_write(i32* %53, i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @medusa_initialize_pal(%struct.cx25821_dev*) #1

declare dso_local i32 @medusa_initialize_ntsc(%struct.cx25821_dev*) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i32, i32*) #1

declare dso_local i32 @setBitAtPos(i32, i32) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
