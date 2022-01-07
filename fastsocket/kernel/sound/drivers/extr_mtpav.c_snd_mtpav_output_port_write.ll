; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_mtpav.c_snd_mtpav_output_port_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_mtpav.c_snd_mtpav_output_port_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpav = type { i32 }
%struct.mtpav_port = type { i32, i32 }
%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtpav*, %struct.mtpav_port*, %struct.snd_rawmidi_substream*)* @snd_mtpav_output_port_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mtpav_output_port_write(%struct.mtpav* %0, %struct.mtpav_port* %1, %struct.snd_rawmidi_substream* %2) #0 {
  %4 = alloca %struct.mtpav*, align 8
  %5 = alloca %struct.mtpav_port*, align 8
  %6 = alloca %struct.snd_rawmidi_substream*, align 8
  %7 = alloca i32, align 4
  store %struct.mtpav* %0, %struct.mtpav** %4, align 8
  store %struct.mtpav_port* %1, %struct.mtpav_port** %5, align 8
  store %struct.snd_rawmidi_substream* %2, %struct.snd_rawmidi_substream** %6, align 8
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %9 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %8, i32* %7, i32 1)
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %65

12:                                               ; preds = %3
  %13 = load %struct.mtpav_port*, %struct.mtpav_port** %5, align 8
  %14 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %17 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %12
  %21 = load %struct.mtpav_port*, %struct.mtpav_port** %5, align 8
  %22 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %25 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %27 = call i32 @snd_mtpav_send_byte(%struct.mtpav* %26, i32 245)
  %28 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %29 = load %struct.mtpav_port*, %struct.mtpav_port** %5, align 8
  %30 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_mtpav_send_byte(%struct.mtpav* %28, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %20
  %37 = load %struct.mtpav_port*, %struct.mtpav_port** %5, align 8
  %38 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %43 = load %struct.mtpav_port*, %struct.mtpav_port** %5, align 8
  %44 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snd_mtpav_send_byte(%struct.mtpav* %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %36, %20
  br label %48

48:                                               ; preds = %47, %12
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.mtpav_port*, %struct.mtpav_port** %5, align 8
  %56 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @snd_mtpav_send_byte(%struct.mtpav* %58, i32 %59)
  br label %61

61:                                               ; preds = %57
  %62 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %63 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %62, i32* %7, i32 1)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %49, label %65

65:                                               ; preds = %11, %61
  ret void
}

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i32*, i32) #1

declare dso_local i32 @snd_mtpav_send_byte(%struct.mtpav*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
