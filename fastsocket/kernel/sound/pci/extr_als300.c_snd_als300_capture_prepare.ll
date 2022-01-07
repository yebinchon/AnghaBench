; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als300.c_snd_als300_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als300.c_snd_als300_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i16 }
%struct.snd_als300 = type { i32, i32 }

@RECORD_CONTROL = common dso_local global i32 0, align 4
@TRANSFER_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Period bytes: %d Buffer bytes %d\0A\00", align 1
@RECORD_START = common dso_local global i32 0, align 4
@RECORD_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_als300_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_als300*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_als300* %9, %struct.snd_als300** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call zeroext i16 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %13)
  store i16 %14, i16* %6, align 2
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call zeroext i16 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %15)
  store i16 %16, i16* %7, align 2
  %17 = call i32 (...) @snd_als300_dbgcallenter()
  %18 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %19 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %22 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RECORD_CONTROL, align 4
  %25 = call i32 @snd_als300_gcr_read(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @TRANSFER_START, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i16, i16* %6, align 2
  %31 = load i16, i16* %7, align 2
  %32 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i16 zeroext %30, i16 zeroext %31)
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, -65536
  store i32 %34, i32* %3, align 4
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %41 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RECORD_CONTROL, align 4
  %44 = load i32, i32* %3, align 4
  %45 = trunc i32 %44 to i16
  %46 = call i32 @snd_als300_gcr_write(i32 %42, i32 %43, i16 zeroext %45)
  %47 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %48 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RECORD_START, align 4
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 0
  %53 = load i16, i16* %52, align 2
  %54 = call i32 @snd_als300_gcr_write(i32 %49, i32 %50, i16 zeroext %53)
  %55 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %56 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RECORD_END, align 4
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 0
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* %7, align 2
  %64 = zext i16 %63 to i32
  %65 = add nsw i32 %62, %64
  %66 = sub nsw i32 %65, 1
  %67 = trunc i32 %66 to i16
  %68 = call i32 @snd_als300_gcr_write(i32 %57, i32 %58, i16 zeroext %67)
  %69 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %70 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_irq(i32* %70)
  %72 = call i32 (...) @snd_als300_dbgcallleave()
  ret i32 0
}

declare dso_local %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local zeroext i16 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local zeroext i16 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_als300_dbgcallenter(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_als300_gcr_read(i32, i32) #1

declare dso_local i32 @snd_als300_dbgplay(i8*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @snd_als300_gcr_write(i32, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_als300_dbgcallleave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
