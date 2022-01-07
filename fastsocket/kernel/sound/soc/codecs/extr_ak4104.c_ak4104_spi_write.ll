; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4104.c_ak4104_spi_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4104.c_ak4104_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32*, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AK4104_REG_MASK = common dso_local global i32 0, align 4
@AK4104_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SPI write failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32, i32)* @ak4104_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4104_spi_write(%struct.snd_soc_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca [2 x i32], align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 2
  %16 = load %struct.spi_device*, %struct.spi_device** %15, align 8
  store %struct.spi_device* %16, %struct.spi_device** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %61

25:                                               ; preds = %3
  %26 = load i32, i32* @AK4104_REG_MASK, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @AK4104_WRITE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %25
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %40, i64 1
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %42, align 4
  %44 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %46 = call i64 @spi_write(%struct.spi_device* %44, i32* %45, i32 8)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %61

54:                                               ; preds = %39
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %25
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %48, %22
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @spi_write(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
