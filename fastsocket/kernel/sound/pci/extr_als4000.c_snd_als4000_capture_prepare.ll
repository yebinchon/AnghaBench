; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als4000.c_snd_als4000_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als4000.c_snd_als4000_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.snd_sb = type { i32, i32, i32 }

@ALS4000_FORMAT_16BIT = common dso_local global i32 0, align 4
@ALS4K_CR1C_FIFO2_BLOCK_LENGTH_LO = common dso_local global i32 0, align 4
@ALS4K_CR1D_FIFO2_BLOCK_LENGTH_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_als4000_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als4000_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_sb*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_sb* %8, %struct.snd_sb** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = call i32 @snd_als4000_get_format(%struct.snd_pcm_runtime* %12)
  %14 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %15 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = call i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %16)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %21 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ALS4000_FORMAT_16BIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = lshr i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %33 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %32, i32 0, i32 2
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snd_als4000_set_rate(%struct.snd_sb* %35, i32 %38)
  %40 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @snd_als4000_set_capture_dma(%struct.snd_sb* %40, i32 %43, i64 %44)
  %46 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %47 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %50 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %49, i32 0, i32 1
  %51 = call i32 @spin_lock_irq(i32* %50)
  %52 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %53 = load i32, i32* @ALS4K_CR1C_FIFO2_BLOCK_LENGTH_LO, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 255
  %56 = call i32 @snd_als4_cr_write(%struct.snd_sb* %52, i32 %53, i32 %55)
  %57 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %58 = load i32, i32* @ALS4K_CR1D_FIFO2_BLOCK_LENGTH_HI, align 4
  %59 = load i32, i32* %6, align 4
  %60 = lshr i32 %59, 8
  %61 = call i32 @snd_als4_cr_write(%struct.snd_sb* %57, i32 %58, i32 %60)
  %62 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %63 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock_irq(i32* %63)
  ret i32 0
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_als4000_get_format(%struct.snd_pcm_runtime*) #1

declare dso_local i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_als4000_set_rate(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_als4000_set_capture_dma(%struct.snd_sb*, i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_als4_cr_write(%struct.snd_sb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
