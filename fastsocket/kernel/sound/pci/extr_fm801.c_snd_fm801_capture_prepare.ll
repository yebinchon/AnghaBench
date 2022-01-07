; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_fm801.c_snd_fm801_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_fm801.c_snd_fm801_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, i32, i32 }
%struct.fm801 = type { i32, i32, i32, i32, i64, i64, i64 }

@FM801_START = common dso_local global i32 0, align 4
@FM801_16BIT = common dso_local global i32 0, align 4
@FM801_STEREO = common dso_local global i32 0, align 4
@FM801_RATE_MASK = common dso_local global i32 0, align 4
@FM801_RATE_SHIFT = common dso_local global i32 0, align 4
@CAP_CTRL = common dso_local global i32 0, align 4
@CAP_COUNT = common dso_local global i32 0, align 4
@CAP_BUF1 = common dso_local global i32 0, align 4
@CAP_BUF2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_fm801_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
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
  %28 = xor i32 %27, -1
  %29 = load %struct.fm801*, %struct.fm801** %3, align 8
  %30 = getelementptr inbounds %struct.fm801, %struct.fm801* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_pcm_format_width(i32 %35)
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load i32, i32* @FM801_16BIT, align 4
  %40 = load %struct.fm801*, %struct.fm801** %3, align 8
  %41 = getelementptr inbounds %struct.fm801, %struct.fm801* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %1
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @FM801_STEREO, align 4
  %51 = load %struct.fm801*, %struct.fm801** %3, align 8
  %52 = getelementptr inbounds %struct.fm801, %struct.fm801* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @snd_fm801_rate_bits(i32 %58)
  %60 = load i32, i32* @FM801_RATE_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load %struct.fm801*, %struct.fm801** %3, align 8
  %63 = getelementptr inbounds %struct.fm801, %struct.fm801* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.fm801*, %struct.fm801** %3, align 8
  %67 = getelementptr inbounds %struct.fm801, %struct.fm801* %66, i32 0, i32 6
  store i64 0, i64* %67, align 8
  %68 = load %struct.fm801*, %struct.fm801** %3, align 8
  %69 = getelementptr inbounds %struct.fm801, %struct.fm801* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fm801*, %struct.fm801** %3, align 8
  %72 = load i32, i32* @CAP_CTRL, align 4
  %73 = call i32 @FM801_REG(%struct.fm801* %71, i32 %72)
  %74 = call i32 @outw(i32 %70, i32 %73)
  %75 = load %struct.fm801*, %struct.fm801** %3, align 8
  %76 = getelementptr inbounds %struct.fm801, %struct.fm801* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load %struct.fm801*, %struct.fm801** %3, align 8
  %80 = load i32, i32* @CAP_COUNT, align 4
  %81 = call i32 @FM801_REG(%struct.fm801* %79, i32 %80)
  %82 = call i32 @outw(i32 %78, i32 %81)
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.fm801*, %struct.fm801** %3, align 8
  %87 = getelementptr inbounds %struct.fm801, %struct.fm801* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  %88 = load %struct.fm801*, %struct.fm801** %3, align 8
  %89 = getelementptr inbounds %struct.fm801, %struct.fm801* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load %struct.fm801*, %struct.fm801** %3, align 8
  %91 = getelementptr inbounds %struct.fm801, %struct.fm801* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.fm801*, %struct.fm801** %3, align 8
  %94 = load i32, i32* @CAP_BUF1, align 4
  %95 = call i32 @FM801_REG(%struct.fm801* %93, i32 %94)
  %96 = call i32 @outl(i64 %92, i32 %95)
  %97 = load %struct.fm801*, %struct.fm801** %3, align 8
  %98 = getelementptr inbounds %struct.fm801, %struct.fm801* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.fm801*, %struct.fm801** %3, align 8
  %101 = getelementptr inbounds %struct.fm801, %struct.fm801* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fm801*, %struct.fm801** %3, align 8
  %104 = getelementptr inbounds %struct.fm801, %struct.fm801* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = srem i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %99, %107
  %109 = load %struct.fm801*, %struct.fm801** %3, align 8
  %110 = load i32, i32* @CAP_BUF2, align 4
  %111 = call i32 @FM801_REG(%struct.fm801* %109, i32 %110)
  %112 = call i32 @outl(i64 %108, i32 %111)
  %113 = load %struct.fm801*, %struct.fm801** %3, align 8
  %114 = getelementptr inbounds %struct.fm801, %struct.fm801* %113, i32 0, i32 3
  %115 = call i32 @spin_unlock_irq(i32* %114)
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
