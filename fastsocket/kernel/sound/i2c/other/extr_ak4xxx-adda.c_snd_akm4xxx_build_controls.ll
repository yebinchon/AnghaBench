; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4xxx-adda.c_snd_akm4xxx_build_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4xxx-adda.c_snd_akm4xxx_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i64, i32 }

@SND_AK4355 = common dso_local global i64 0, align 8
@SND_AK4358 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_akm4xxx_build_controls(%struct.snd_akm4xxx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  %6 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %7 = call i32 @build_dac_controls(%struct.snd_akm4xxx* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %14 = call i32 @build_adc_controls(%struct.snd_akm4xxx* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %12
  %20 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %21 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SND_AK4355, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %27 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SND_AK4358, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  store i32 1, i32* %5, align 4
  br label %37

32:                                               ; preds = %25
  %33 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %34 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %31
  %38 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @build_deemphasis(%struct.snd_akm4xxx* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %43, %17, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @build_dac_controls(%struct.snd_akm4xxx*) #1

declare dso_local i32 @build_adc_controls(%struct.snd_akm4xxx*) #1

declare dso_local i32 @build_deemphasis(%struct.snd_akm4xxx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
