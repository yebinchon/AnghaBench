; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream-ch2.c_cx25821_set_pixelengine_ch2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream-ch2.c_cx25821_set_pixelengine_ch2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i64 }
%struct.sram_channel = type { i32, i32, i32, i32 }

@WIDTH_D1 = common dso_local global i32 0, align 4
@PIXEL_ENGINE_VIP1 = common dso_local global i32 0, align 4
@VID_CDT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*, %struct.sram_channel*, i32)* @cx25821_set_pixelengine_ch2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25821_set_pixelengine_ch2(%struct.cx25821_dev* %0, %struct.sram_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.cx25821_dev*, align 8
  %5 = alloca %struct.sram_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %4, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @WIDTH_D1, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %15 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @PIXEL_ENGINE_VIP1, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 3
  %20 = shl i32 %19, 12
  %21 = load i32, i32* %12, align 4
  %22 = and i32 %21, 7
  %23 = or i32 %20, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, -17
  store i32 %25, i32* %11, align 4
  %26 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %27 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 16
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load %struct.sram_channel*, %struct.sram_channel** %5, align 8
  %35 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @cx_write(i32 %36, i32 %37)
  %39 = load %struct.sram_channel*, %struct.sram_channel** %5, align 8
  %40 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @cx_write(i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = sdiv i32 %44, 2
  %46 = and i32 %45, 1023
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %10, align 4
  %48 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %49 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %3
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %3
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 16
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.sram_channel*, %struct.sram_channel** %5, align 8
  %61 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @cx_write(i32 %62, i32 %63)
  %65 = load %struct.sram_channel*, %struct.sram_channel** %5, align 8
  %66 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VID_CDT_SIZE, align 4
  %69 = ashr i32 %68, 3
  %70 = call i32 @cx_write(i32 %67, i32 %69)
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
