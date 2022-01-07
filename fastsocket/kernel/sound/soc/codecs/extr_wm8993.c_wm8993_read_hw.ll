; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_read_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_read_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@I2C_M_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed to read 0x%x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8993_read_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_read_hw(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.i2c_msg], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_client*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %10, i32 0, i32 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %9, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 2
  store i64 0, i64* %19, align 16
  %20 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  store i32 1, i32* %21, align 16
  %22 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 1
  store i32* %5, i32** %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* @I2C_M_RD, align 8
  %30 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 16
  %32 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  store i32 2, i32* %33, align 16
  %34 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  store i32* %7, i32** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %40 = call i32 @i2c_transfer(i32 %38, %struct.i2c_msg* %39, i32 2)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %50

43:                                               ; preds = %2
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %45 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %57

50:                                               ; preds = %2
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 8
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 255
  %55 = shl i32 %54, 8
  %56 = or i32 %52, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %43
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
