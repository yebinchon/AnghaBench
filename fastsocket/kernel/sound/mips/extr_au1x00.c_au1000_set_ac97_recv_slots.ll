; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_au1000_set_ac97_recv_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_au1000_set_ac97_recv_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_au1000 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AC97C_RECV_SLOTS_MASK = common dso_local global i64 0, align 8
@AC97C_RECV_SLOTS_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_au1000*, i64)* @au1000_set_ac97_recv_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_set_ac97_recv_slots(%struct.snd_au1000* %0, i64 %1) #0 {
  %3 = alloca %struct.snd_au1000*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.snd_au1000* %0, %struct.snd_au1000** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.snd_au1000*, %struct.snd_au1000** %3, align 8
  %7 = getelementptr inbounds %struct.snd_au1000, %struct.snd_au1000* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.snd_au1000*, %struct.snd_au1000** %3, align 8
  %10 = getelementptr inbounds %struct.snd_au1000, %struct.snd_au1000* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store volatile i64 %13, i64* %5, align 8
  %14 = load volatile i64, i64* %5, align 8
  %15 = load volatile i64, i64* @AC97C_RECV_SLOTS_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  store volatile i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @AC97C_RECV_SLOTS_BIT, align 8
  %20 = shl i64 %18, %19
  %21 = load volatile i64, i64* %5, align 8
  %22 = or i64 %21, %20
  store volatile i64 %22, i64* %5, align 8
  %23 = load volatile i64, i64* %5, align 8
  %24 = load %struct.snd_au1000*, %struct.snd_au1000** %3, align 8
  %25 = getelementptr inbounds %struct.snd_au1000, %struct.snd_au1000* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %23, i64* %27, align 8
  %28 = load %struct.snd_au1000*, %struct.snd_au1000** %3, align 8
  %29 = getelementptr inbounds %struct.snd_au1000, %struct.snd_au1000* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
