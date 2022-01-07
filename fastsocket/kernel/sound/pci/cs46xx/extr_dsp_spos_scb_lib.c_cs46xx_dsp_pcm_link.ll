; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_pcm_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_pcm_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { %struct.dsp_scb_descriptor* }
%struct.dsp_scb_descriptor = type { i32, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor* }
%struct.dsp_pcm_channel_descriptor = type { i64, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor* }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_pcm_link(%struct.snd_cs46xx* %0, %struct.dsp_pcm_channel_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca %struct.dsp_pcm_channel_descriptor*, align 8
  %6 = alloca %struct.dsp_spos_instance*, align 8
  %7 = alloca %struct.dsp_scb_descriptor*, align 8
  %8 = alloca %struct.dsp_scb_descriptor*, align 8
  %9 = alloca i64, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store %struct.dsp_pcm_channel_descriptor* %1, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %10 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %11 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %10, i32 0, i32 1
  %12 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %11, align 8
  store %struct.dsp_spos_instance* %12, %struct.dsp_spos_instance** %6, align 8
  %13 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %14 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %13, i32 0, i32 1
  %15 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %14, align 8
  store %struct.dsp_scb_descriptor* %15, %struct.dsp_scb_descriptor** %8, align 8
  %16 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %17 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %16, i32 0, i32 1
  %18 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %19 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %22 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %26, i32 0, i32 1
  %28 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %27, align 8
  %29 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %97

33:                                               ; preds = %2
  %34 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  store %struct.dsp_scb_descriptor* %34, %struct.dsp_scb_descriptor** %7, align 8
  %35 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %36 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %35, i32 0, i32 2
  %37 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %36, align 8
  %38 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %39 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %38, i32 0, i32 0
  %40 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %39, align 8
  %41 = icmp ne %struct.dsp_scb_descriptor* %37, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %33
  %43 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %44 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %43, i32 0, i32 2
  %45 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %44, align 8
  %46 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %47 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %46, i32 0, i32 2
  %48 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %47, align 8
  %49 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %48, i32 0, i32 1
  store %struct.dsp_scb_descriptor* %45, %struct.dsp_scb_descriptor** %49, align 8
  %50 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %51 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %50, i32 0, i32 2
  %52 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %51, align 8
  %53 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %54 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %53, i32 0, i32 2
  %55 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %54, align 8
  %56 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %55, i32 0, i32 3
  store %struct.dsp_scb_descriptor* %52, %struct.dsp_scb_descriptor** %56, align 8
  br label %57

57:                                               ; preds = %42, %33
  %58 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %59 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %58, i32 0, i32 2
  %60 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %59, align 8
  %61 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  %62 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %61, i32 0, i32 2
  store %struct.dsp_scb_descriptor* %60, %struct.dsp_scb_descriptor** %62, align 8
  %63 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %64 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %63, i32 0, i32 2
  %65 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %64, align 8
  %66 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %65, i32 0, i32 1
  %67 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %66, align 8
  %68 = call i32 @snd_BUG_ON(%struct.dsp_scb_descriptor* %67)
  %69 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %7, align 8
  %70 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %71 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %70, i32 0, i32 2
  %72 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %71, align 8
  %73 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %72, i32 0, i32 1
  store %struct.dsp_scb_descriptor* %69, %struct.dsp_scb_descriptor** %73, align 8
  %74 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %75 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %74, i32 0, i32 0
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  %78 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %79 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %80 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %79, i32 0, i32 2
  %81 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %80, align 8
  %82 = call i32 @cs46xx_dsp_spos_update_scb(%struct.snd_cs46xx* %78, %struct.dsp_scb_descriptor* %81)
  %83 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %84 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %7, align 8
  %85 = call i32 @cs46xx_dsp_spos_update_scb(%struct.snd_cs46xx* %83, %struct.dsp_scb_descriptor* %84)
  %86 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %87 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %89 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %88, i32 0, i32 0
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %5, align 8
  %93 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %92, i32 0, i32 1
  %94 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %93, align 8
  %95 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %57, %25
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_BUG_ON(%struct.dsp_scb_descriptor*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cs46xx_dsp_spos_update_scb(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
