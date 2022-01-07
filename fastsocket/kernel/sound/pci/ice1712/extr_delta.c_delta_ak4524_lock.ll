; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_delta_ak4524_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_delta_ak4524_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { %struct.snd_ice1712**, i64* }
%struct.snd_ice1712 = type { i32 }
%struct.snd_ak4xxx_private = type { i32, i32 }

@ICE1712_DELTA_CODEC_CHIP_A = common dso_local global i32 0, align 4
@ICE1712_DELTA_CODEC_CHIP_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @delta_ak4524_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_ak4524_lock(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ak4xxx_private*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %8 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.snd_ak4xxx_private*
  store %struct.snd_ak4xxx_private* %13, %struct.snd_ak4xxx_private** %5, align 8
  %14 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %15 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %14, i32 0, i32 0
  %16 = load %struct.snd_ice1712**, %struct.snd_ice1712*** %15, align 8
  %17 = getelementptr inbounds %struct.snd_ice1712*, %struct.snd_ice1712** %16, i64 0
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %17, align 8
  store %struct.snd_ice1712* %18, %struct.snd_ice1712** %6, align 8
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %20 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ICE1712_DELTA_CODEC_CHIP_A, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @ICE1712_DELTA_CODEC_CHIP_B, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  ret void
}

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
