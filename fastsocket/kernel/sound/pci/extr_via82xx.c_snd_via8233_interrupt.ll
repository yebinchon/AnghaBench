; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via8233_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via8233_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i32, i32, %struct.viadev* }
%struct.viadev = type { i32, i8, i64, i64, i64, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@SGD_SHADOW = common dso_local global i32 0, align 4
@VIA8233_SHADOW_STAT_ACTIVE = common dso_local global i32 0, align 4
@VIA_REG_STAT_EOL = common dso_local global i32 0, align 4
@VIA_REG_STAT_FLAG = common dso_local global i32 0, align 4
@VIA_REG_STAT_ACTIVE = common dso_local global i8 0, align 1
@OFFSET_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_via8233_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via8233_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.via82xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.viadev*, align 8
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.via82xx*
  store %struct.via82xx* %14, %struct.via82xx** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %16 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %19 = load i32, i32* @SGD_SHADOW, align 4
  %20 = call i32 @VIAREG(%struct.via82xx* %18, i32 %19)
  %21 = call i32 @inl(i32 %20)
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %120, %2
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %25 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %123

28:                                               ; preds = %22
  %29 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %30 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %29, i32 0, i32 2
  %31 = load %struct.viadev*, %struct.viadev** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.viadev, %struct.viadev* %31, i64 %33
  store %struct.viadev* %34, %struct.viadev** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.viadev*, %struct.viadev** %9, align 8
  %37 = getelementptr inbounds %struct.viadev, %struct.viadev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = lshr i32 %35, %38
  %40 = load i32, i32* @VIA8233_SHADOW_STAT_ACTIVE, align 4
  %41 = load i32, i32* @VIA_REG_STAT_EOL, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @VIA_REG_STAT_FLAG, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %12, align 1
  %47 = load i8, i8* %12, align 1
  %48 = zext i8 %47 to i32
  %49 = load i32, i32* @VIA_REG_STAT_EOL, align 4
  %50 = load i32, i32* @VIA_REG_STAT_FLAG, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %11, align 1
  %54 = load i8, i8* %11, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %28
  br label %120

57:                                               ; preds = %28
  %58 = load %struct.viadev*, %struct.viadev** %9, align 8
  %59 = getelementptr inbounds %struct.viadev, %struct.viadev* %58, i32 0, i32 5
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %59, align 8
  store %struct.snd_pcm_substream* %60, %struct.snd_pcm_substream** %10, align 8
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %62 = icmp ne %struct.snd_pcm_substream* %61, null
  br i1 %62, label %63, label %114

63:                                               ; preds = %57
  %64 = load %struct.viadev*, %struct.viadev** %9, align 8
  %65 = getelementptr inbounds %struct.viadev, %struct.viadev* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %114

68:                                               ; preds = %63
  %69 = load i8, i8* %11, align 1
  %70 = zext i8 %69 to i32
  %71 = load i32, i32* @VIA_REG_STAT_EOL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.viadev*, %struct.viadev** %9, align 8
  %76 = getelementptr inbounds %struct.viadev, %struct.viadev* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  br label %85

77:                                               ; preds = %68
  %78 = load %struct.viadev*, %struct.viadev** %9, align 8
  %79 = getelementptr inbounds %struct.viadev, %struct.viadev* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.viadev*, %struct.viadev** %9, align 8
  %82 = getelementptr inbounds %struct.viadev, %struct.viadev* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %77, %74
  %86 = load i8, i8* %11, align 1
  %87 = load %struct.viadev*, %struct.viadev** %9, align 8
  %88 = getelementptr inbounds %struct.viadev, %struct.viadev* %87, i32 0, i32 1
  store i8 %86, i8* %88, align 4
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i32
  %91 = load i32, i32* @VIA8233_SHADOW_STAT_ACTIVE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %85
  %95 = load i8, i8* @VIA_REG_STAT_ACTIVE, align 1
  %96 = zext i8 %95 to i32
  %97 = load %struct.viadev*, %struct.viadev** %9, align 8
  %98 = getelementptr inbounds %struct.viadev, %struct.viadev* %97, i32 0, i32 1
  %99 = load i8, i8* %98, align 4
  %100 = zext i8 %99 to i32
  %101 = or i32 %100, %96
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %98, align 4
  br label %103

103:                                              ; preds = %94, %85
  %104 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %105 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %104, i32 0, i32 1
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %108 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %107)
  %109 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %110 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %109, i32 0, i32 1
  %111 = call i32 @spin_lock(i32* %110)
  %112 = load %struct.viadev*, %struct.viadev** %9, align 8
  %113 = getelementptr inbounds %struct.viadev, %struct.viadev* %112, i32 0, i32 1
  store i8 0, i8* %113, align 4
  br label %114

114:                                              ; preds = %103, %63, %57
  %115 = load i8, i8* %11, align 1
  %116 = load %struct.viadev*, %struct.viadev** %9, align 8
  %117 = load i32, i32* @OFFSET_STATUS, align 4
  %118 = call i32 @VIADEV_REG(%struct.viadev* %116, i32 %117)
  %119 = call i32 @outb(i8 zeroext %115, i32 %118)
  store i32 1, i32* %8, align 4
  br label %120

120:                                              ; preds = %114, %56
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %22

123:                                              ; preds = %22
  %124 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %125 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %124, i32 0, i32 1
  %126 = call i32 @spin_unlock(i32* %125)
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @IRQ_RETVAL(i32 %127)
  ret i32 %128
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @VIAREG(%struct.via82xx*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
