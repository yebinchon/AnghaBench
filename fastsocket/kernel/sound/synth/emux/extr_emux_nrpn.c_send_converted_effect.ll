; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_nrpn.c_send_converted_effect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_nrpn.c_send_converted_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nrpn_conv_table = type { i32, i32 (i32)*, i32 }
%struct.snd_emux_port = type { i32 }
%struct.snd_midi_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nrpn_conv_table*, i32, %struct.snd_emux_port*, %struct.snd_midi_channel*, i32, i32, i32)* @send_converted_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_converted_effect(%struct.nrpn_conv_table* %0, i32 %1, %struct.snd_emux_port* %2, %struct.snd_midi_channel* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nrpn_conv_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_emux_port*, align 8
  %12 = alloca %struct.snd_midi_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nrpn_conv_table* %0, %struct.nrpn_conv_table** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.snd_emux_port* %2, %struct.snd_emux_port** %11, align 8
  store %struct.snd_midi_channel* %3, %struct.snd_midi_channel** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %18

18:                                               ; preds = %52, %7
  %19 = load i32, i32* %16, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.nrpn_conv_table*, %struct.nrpn_conv_table** %9, align 8
  %24 = load i32, i32* %16, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.nrpn_conv_table, %struct.nrpn_conv_table* %23, i64 %25
  %27 = getelementptr inbounds %struct.nrpn_conv_table, %struct.nrpn_conv_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %22
  %32 = load %struct.nrpn_conv_table*, %struct.nrpn_conv_table** %9, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nrpn_conv_table, %struct.nrpn_conv_table* %32, i64 %34
  %36 = getelementptr inbounds %struct.nrpn_conv_table, %struct.nrpn_conv_table* %35, i32 0, i32 1
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 %37(i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load %struct.snd_emux_port*, %struct.snd_emux_port** %11, align 8
  %41 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %12, align 8
  %42 = load %struct.nrpn_conv_table*, %struct.nrpn_conv_table** %9, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nrpn_conv_table, %struct.nrpn_conv_table* %42, i64 %44
  %46 = getelementptr inbounds %struct.nrpn_conv_table, %struct.nrpn_conv_table* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @snd_emux_send_effect(%struct.snd_emux_port* %40, %struct.snd_midi_channel* %41, i32 %47, i32 %48, i32 %49)
  store i32 1, i32* %8, align 4
  br label %56

51:                                               ; preds = %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %18

55:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @snd_emux_send_effect(%struct.snd_emux_port*, %struct.snd_midi_channel*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
