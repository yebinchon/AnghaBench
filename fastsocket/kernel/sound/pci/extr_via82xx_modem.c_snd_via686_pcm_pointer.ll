; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx_modem.c_snd_via686_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx_modem.c_snd_via686_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.viadev* }
%struct.viadev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.via82xx_modem = type { i32 }

@OFFSET_STATUS = common dso_local global i32 0, align 4
@VIA_REG_STAT_ACTIVE = common dso_local global i32 0, align 4
@OFFSET_CURR_COUNT = common dso_local global i32 0, align 4
@OFFSET_CURR_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_via686_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via686_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.via82xx_modem*, align 8
  %5 = alloca %struct.viadev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.via82xx_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.via82xx_modem* %11, %struct.via82xx_modem** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.viadev*, %struct.viadev** %15, align 8
  store %struct.viadev* %16, %struct.viadev** %5, align 8
  %17 = load %struct.viadev*, %struct.viadev** %5, align 8
  %18 = getelementptr inbounds %struct.viadev, %struct.viadev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

26:                                               ; preds = %1
  %27 = load %struct.viadev*, %struct.viadev** %5, align 8
  %28 = load i32, i32* @OFFSET_STATUS, align 4
  %29 = call i32 @VIADEV_REG(%struct.viadev* %27, i32 %28)
  %30 = call i32 @inb(i32 %29)
  %31 = load i32, i32* @VIA_REG_STAT_ACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %83

35:                                               ; preds = %26
  %36 = load %struct.via82xx_modem*, %struct.via82xx_modem** %4, align 8
  %37 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.viadev*, %struct.viadev** %5, align 8
  %40 = load i32, i32* @OFFSET_CURR_COUNT, align 4
  %41 = call i32 @VIADEV_REG(%struct.viadev* %39, i32 %40)
  %42 = call i32 @inl(i32 %41)
  %43 = and i32 %42, 16777215
  store i32 %43, i32* %8, align 4
  %44 = load %struct.viadev*, %struct.viadev** %5, align 8
  %45 = load i32, i32* @OFFSET_CURR_PTR, align 4
  %46 = call i32 @VIADEV_REG(%struct.viadev* %44, i32 %45)
  %47 = call i32 @inl(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.viadev*, %struct.viadev** %5, align 8
  %50 = getelementptr inbounds %struct.viadev, %struct.viadev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = icmp ule i32 %48, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %70

56:                                               ; preds = %35
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.viadev*, %struct.viadev** %5, align 8
  %59 = getelementptr inbounds %struct.viadev, %struct.viadev* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = sub i32 %57, %62
  %64 = udiv i32 %63, 8
  %65 = sub i32 %64, 1
  %66 = load %struct.viadev*, %struct.viadev** %5, align 8
  %67 = getelementptr inbounds %struct.viadev, %struct.viadev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = urem i32 %65, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %56, %55
  %71 = load %struct.viadev*, %struct.viadev** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @calc_linear_pos(%struct.viadev* %71, i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.via82xx_modem*, %struct.via82xx_modem** %4, align 8
  %76 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @bytes_to_frames(%struct.TYPE_4__* %80, i32 %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %70, %34, %25
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.via82xx_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @calc_linear_pos(%struct.viadev*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
