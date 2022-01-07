; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_uart.c_snd_gf1_interrupt_midi_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_uart.c_snd_gf1_interrupt_midi_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_gus_card*)* @snd_gf1_interrupt_midi_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_interrupt_midi_out(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %5 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %6 = call i32 @snd_gf1_uart_stat(%struct.snd_gus_card* %5)
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %11 = call i32 @snd_gf1_interrupt_midi_in(%struct.snd_gus_card* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %14 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %18 = call i32 @snd_gf1_uart_stat(%struct.snd_gus_card* %17)
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %12
  %22 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %23 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snd_rawmidi_transmit(i32 %24, i8* %3, i32 1)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %29 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %30 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -33
  %34 = call i32 @snd_gf1_uart_cmd(%struct.snd_gus_card* %28, i32 %33)
  br label %39

35:                                               ; preds = %21
  %36 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %37 = load i8, i8* %3, align 1
  %38 = call i32 @snd_gf1_uart_put(%struct.snd_gus_card* %36, i8 signext %37)
  br label %39

39:                                               ; preds = %35, %27
  br label %40

40:                                               ; preds = %39, %12
  %41 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %42 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %41, i32 0, i32 0
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local i32 @snd_gf1_uart_stat(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_gf1_interrupt_midi_in(%struct.snd_gus_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_rawmidi_transmit(i32, i8*, i32) #1

declare dso_local i32 @snd_gf1_uart_cmd(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_uart_put(%struct.snd_gus_card*, i8 signext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
