; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_synth_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_synth_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, %struct.snd_util_memhdr* }
%struct.snd_util_memhdr = type { i32 }
%struct.snd_util_memblk = type { i32 }
%struct.snd_emu10k1_memblk = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_synth_free(%struct.snd_emu10k1* %0, %struct.snd_util_memblk* %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_util_memblk*, align 8
  %5 = alloca %struct.snd_util_memhdr*, align 8
  %6 = alloca %struct.snd_emu10k1_memblk*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store %struct.snd_util_memblk* %1, %struct.snd_util_memblk** %4, align 8
  %8 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %9 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %8, i32 0, i32 1
  %10 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %9, align 8
  store %struct.snd_util_memhdr* %10, %struct.snd_util_memhdr** %5, align 8
  %11 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %4, align 8
  %12 = bitcast %struct.snd_util_memblk* %11 to %struct.snd_emu10k1_memblk*
  store %struct.snd_emu10k1_memblk* %12, %struct.snd_emu10k1_memblk** %6, align 8
  %13 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %5, align 8
  %14 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %26 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %27 = call i32 @unmap_memblk(%struct.snd_emu10k1* %25, %struct.snd_emu10k1_memblk* %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %34 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %35 = call i32 @synth_free_pages(%struct.snd_emu10k1* %33, %struct.snd_emu10k1_memblk* %34)
  %36 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %5, align 8
  %37 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %4, align 8
  %38 = call i32 @__snd_util_mem_free(%struct.snd_util_memhdr* %36, %struct.snd_util_memblk* %37)
  %39 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %5, align 8
  %40 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @unmap_memblk(%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synth_free_pages(%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*) #1

declare dso_local i32 @__snd_util_mem_free(%struct.snd_util_memhdr*, %struct.snd_util_memblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
