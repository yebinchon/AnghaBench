; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_synth.c_snd_emu10k1_synth_delete_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_synth.c_snd_emu10k1_synth_delete_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_device = type { %struct.snd_emux* }
%struct.snd_emux = type { %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_device*)* @snd_emu10k1_synth_delete_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_synth_delete_device(%struct.snd_seq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_device*, align 8
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_seq_device* %0, %struct.snd_seq_device** %3, align 8
  %7 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %8 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %7, i32 0, i32 0
  %9 = load %struct.snd_emux*, %struct.snd_emux** %8, align 8
  %10 = icmp eq %struct.snd_emux* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %14 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %13, i32 0, i32 0
  %15 = load %struct.snd_emux*, %struct.snd_emux** %14, align 8
  store %struct.snd_emux* %15, %struct.snd_emux** %4, align 8
  %16 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %17 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %16, i32 0, i32 0
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %17, align 8
  store %struct.snd_emu10k1* %18, %struct.snd_emu10k1** %5, align 8
  %19 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %32 = call i32 @snd_emux_free(%struct.snd_emux* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %12, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_emux_free(%struct.snd_emux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
