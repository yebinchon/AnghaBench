; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_out_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_out_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gmidi_device* }
%struct.gmidi_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"gmidi_out_trigger %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @gmidi_out_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmidi_out_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gmidi_device*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.gmidi_device*, %struct.gmidi_device** %9, align 8
  store %struct.gmidi_device* %10, %struct.gmidi_device** %5, align 8
  %11 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @VDBG(%struct.gmidi_device* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %21 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.gmidi_device*, %struct.gmidi_device** %5, align 8
  %28 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @VDBG(%struct.gmidi_device*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
