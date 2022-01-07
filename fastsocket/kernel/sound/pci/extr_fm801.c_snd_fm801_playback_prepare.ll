; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_fm801.c_snd_fm801_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_fm801.c_snd_fm801_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, i32, i32 }
%struct.fm801 = type { i32, i32, i32, i32, i64, i64, i64 }

@FM801_START = common dso_local global i32 0, align 4
@FM801_16BIT = common dso_local global i32 0, align 4
@FM801_STEREO = common dso_local global i32 0, align 4
@FM801_RATE_MASK = common dso_local global i32 0, align 4
@FM801_CHANNELS_MASK = common dso_local global i32 0, align 4
@FM801_CHANNELS_4 = common dso_local global i32 0, align 4
@FM801_CHANNELS_6 = common dso_local global i32 0, align 4
@FM801_RATE_SHIFT = common dso_local global i32 0, align 4
@PLY_CTRL = common dso_local global i32 0, align 4
@PLY_COUNT = common dso_local global i32 0, align 4
@PLY_BUF1 = common dso_local global i32 0, align 4
@PLY_BUF2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_fm801_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.fm801*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.fm801* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.fm801* %6, %struct.fm801** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %10)
  %12 = load %struct.fm801*, %struct.fm801** %3, align 8
  %13 = getelementptr inbounds %struct.fm801, %struct.fm801* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %14)
  %16 = load %struct.fm801*, %struct.fm801** %3, align 8
  %17 = getelementptr inbounds %struct.fm801, %struct.fm801* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.fm801*, %struct.fm801** %3, align 8
  %19 = getelementptr inbounds %struct.fm801, %struct.fm801* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load i32, i32* @FM801_START, align 4
  %22 = load i32, i32* @FM801_16BIT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FM801_STEREO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FM801_RATE_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FM801_CHANNELS_MASK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.fm801*, %struct.fm801** %3, align 8
  %32 = getelementptr inbounds %struct.fm801, %struct.fm801* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snd_pcm_format_width(i32 %37)
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load i32, i32* @FM801_16BIT, align 4
  %42 = load %struct.fm801*, %struct.fm801** %3, align 8
  %43 = getelementptr inbounds %struct.fm801, %struct.fm801* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %1
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %80

51:                                               ; preds = %46
  %52 = load i32, i32* @FM801_STEREO, align 4
  %53 = load %struct.fm801*, %struct.fm801** %3, align 8
  %54 = getelementptr inbounds %struct.fm801, %struct.fm801* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load i32, i32* @FM801_CHANNELS_4, align 4
  %63 = load %struct.fm801*, %struct.fm801** %3, align 8
  %64 = getelementptr inbounds %struct.fm801, %struct.fm801* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %79

67:                                               ; preds = %51
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 6
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @FM801_CHANNELS_6, align 4
  %74 = load %struct.fm801*, %struct.fm801** %3, align 8
  %75 = getelementptr inbounds %struct.fm801, %struct.fm801* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %46
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @snd_fm801_rate_bits(i32 %83)
  %85 = load i32, i32* @FM801_RATE_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load %struct.fm801*, %struct.fm801** %3, align 8
  %88 = getelementptr inbounds %struct.fm801, %struct.fm801* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.fm801*, %struct.fm801** %3, align 8
  %92 = getelementptr inbounds %struct.fm801, %struct.fm801* %91, i32 0, i32 6
  store i64 0, i64* %92, align 8
  %93 = load %struct.fm801*, %struct.fm801** %3, align 8
  %94 = getelementptr inbounds %struct.fm801, %struct.fm801* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.fm801*, %struct.fm801** %3, align 8
  %97 = load i32, i32* @PLY_CTRL, align 4
  %98 = call i32 @FM801_REG(%struct.fm801* %96, i32 %97)
  %99 = call i32 @outw(i32 %95, i32 %98)
  %100 = load %struct.fm801*, %struct.fm801** %3, align 8
  %101 = getelementptr inbounds %struct.fm801, %struct.fm801* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.fm801*, %struct.fm801** %3, align 8
  %105 = load i32, i32* @PLY_COUNT, align 4
  %106 = call i32 @FM801_REG(%struct.fm801* %104, i32 %105)
  %107 = call i32 @outw(i32 %103, i32 %106)
  %108 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %109 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.fm801*, %struct.fm801** %3, align 8
  %112 = getelementptr inbounds %struct.fm801, %struct.fm801* %111, i32 0, i32 4
  store i64 %110, i64* %112, align 8
  %113 = load %struct.fm801*, %struct.fm801** %3, align 8
  %114 = getelementptr inbounds %struct.fm801, %struct.fm801* %113, i32 0, i32 5
  store i64 0, i64* %114, align 8
  %115 = load %struct.fm801*, %struct.fm801** %3, align 8
  %116 = getelementptr inbounds %struct.fm801, %struct.fm801* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.fm801*, %struct.fm801** %3, align 8
  %119 = load i32, i32* @PLY_BUF1, align 4
  %120 = call i32 @FM801_REG(%struct.fm801* %118, i32 %119)
  %121 = call i32 @outl(i64 %117, i32 %120)
  %122 = load %struct.fm801*, %struct.fm801** %3, align 8
  %123 = getelementptr inbounds %struct.fm801, %struct.fm801* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.fm801*, %struct.fm801** %3, align 8
  %126 = getelementptr inbounds %struct.fm801, %struct.fm801* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.fm801*, %struct.fm801** %3, align 8
  %129 = getelementptr inbounds %struct.fm801, %struct.fm801* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = srem i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %124, %132
  %134 = load %struct.fm801*, %struct.fm801** %3, align 8
  %135 = load i32, i32* @PLY_BUF2, align 4
  %136 = call i32 @FM801_REG(%struct.fm801* %134, i32 %135)
  %137 = call i32 @outl(i64 %133, i32 %136)
  %138 = load %struct.fm801*, %struct.fm801** %3, align 8
  %139 = getelementptr inbounds %struct.fm801, %struct.fm801* %138, i32 0, i32 3
  %140 = call i32 @spin_unlock_irq(i32* %139)
  ret i32 0
}

declare dso_local %struct.fm801* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_fm801_rate_bits(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @FM801_REG(%struct.fm801*, i32) #1

declare dso_local i32 @outl(i64, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
