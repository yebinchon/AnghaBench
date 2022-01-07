; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_ali_voice* }
%struct.snd_ali_voice = type { i32, i32 }
%struct.snd_ali = type { i32 }

@ALI_GC_CIR = common dso_local global i64 0, align 8
@ALI_CSO_ALPHA_FMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ali_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ali*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_ali_voice*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ali* %9, %struct.snd_ali** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %14, align 8
  store %struct.snd_ali_voice* %15, %struct.snd_ali_voice** %6, align 8
  %16 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %20 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_irq(i32* %25)
  store i32 0, i32* %2, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %29 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %32 = load i64, i64* @ALI_GC_CIR, align 8
  %33 = call i32 @ALI_REG(%struct.snd_ali* %31, i64 %32)
  %34 = call i32 @outb(i32 %30, i32 %33)
  %35 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %36 = load i64, i64* @ALI_CSO_ALPHA_FMS, align 8
  %37 = add nsw i64 %36, 2
  %38 = call i32 @ALI_REG(%struct.snd_ali* %35, i64 %37)
  %39 = call i32 @inw(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %41 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %27, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i64) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
