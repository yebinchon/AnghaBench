; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via82xx_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via82xx_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.viadev* }
%struct.viadev = type { i32 }
%struct.via82xx = type { i64 }

@TYPE_VIA686 = common dso_local global i64 0, align 8
@VIA_REG_CTRL_INT = common dso_local global i8 0, align 1
@VIA_REG_CTRL_START = common dso_local global i8 0, align 1
@VIA_REG_CTRL_TERMINATE = common dso_local global i8 0, align 1
@VIA_REG_CTRL_PAUSE = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@OFFSET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_via82xx_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.via82xx*, align 8
  %7 = alloca %struct.viadev*, align 8
  %8 = alloca i8, align 1
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.via82xx* %10, %struct.via82xx** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.viadev*, %struct.viadev** %14, align 8
  store %struct.viadev* %15, %struct.viadev** %7, align 8
  %16 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %17 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TYPE_VIA686, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8, i8* @VIA_REG_CTRL_INT, align 1
  store i8 %22, i8* %8, align 1
  br label %24

23:                                               ; preds = %2
  store i8 0, i8* %8, align 1
  br label %24

24:                                               ; preds = %23, %21
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %51 [
    i32 130, label %26
    i32 131, label %26
    i32 129, label %35
    i32 128, label %35
    i32 133, label %39
    i32 132, label %48
  ]

26:                                               ; preds = %24, %24
  %27 = load i8, i8* @VIA_REG_CTRL_START, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %8, align 1
  %33 = load %struct.viadev*, %struct.viadev** %7, align 8
  %34 = getelementptr inbounds %struct.viadev, %struct.viadev* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %54

35:                                               ; preds = %24, %24
  %36 = load i8, i8* @VIA_REG_CTRL_TERMINATE, align 1
  store i8 %36, i8* %8, align 1
  %37 = load %struct.viadev*, %struct.viadev** %7, align 8
  %38 = getelementptr inbounds %struct.viadev, %struct.viadev* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %54

39:                                               ; preds = %24
  %40 = load i8, i8* @VIA_REG_CTRL_PAUSE, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %8, align 1
  %46 = load %struct.viadev*, %struct.viadev** %7, align 8
  %47 = getelementptr inbounds %struct.viadev, %struct.viadev* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %54

48:                                               ; preds = %24
  %49 = load %struct.viadev*, %struct.viadev** %7, align 8
  %50 = getelementptr inbounds %struct.viadev, %struct.viadev* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %54

51:                                               ; preds = %24
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %67

54:                                               ; preds = %48, %39, %35, %26
  %55 = load i8, i8* %8, align 1
  %56 = load %struct.viadev*, %struct.viadev** %7, align 8
  %57 = load i32, i32* @OFFSET_CONTROL, align 4
  %58 = call i32 @VIADEV_REG(%struct.viadev* %56, i32 %57)
  %59 = call i32 @outb(i8 zeroext %55, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 129
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %64 = load %struct.viadev*, %struct.viadev** %7, align 8
  %65 = call i32 @snd_via82xx_channel_reset(%struct.via82xx* %63, %struct.viadev* %64)
  br label %66

66:                                               ; preds = %62, %54
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %51
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @snd_via82xx_channel_reset(%struct.via82xx*, %struct.viadev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
