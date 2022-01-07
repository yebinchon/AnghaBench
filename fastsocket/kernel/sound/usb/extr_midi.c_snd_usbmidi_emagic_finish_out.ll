; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_emagic_finish_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_emagic_finish_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi_out_endpoint = type { i32 }

@snd_usbmidi_emagic_finish_out.finish_data = internal constant [10 x i32] [i32 240, i32 0, i32 32, i32 49, i32 100, i32 16, i32 0, i32 127, i32 64, i32 247], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi_out_endpoint*)* @snd_usbmidi_emagic_finish_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_emagic_finish_out(%struct.snd_usb_midi_out_endpoint* %0) #0 {
  %2 = alloca %struct.snd_usb_midi_out_endpoint*, align 8
  store %struct.snd_usb_midi_out_endpoint* %0, %struct.snd_usb_midi_out_endpoint** %2, align 8
  %3 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %2, align 8
  %4 = call i32 @send_bulk_static_data(%struct.snd_usb_midi_out_endpoint* %3, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @snd_usbmidi_emagic_finish_out.finish_data, i64 0, i64 0), i32 40)
  ret void
}

declare dso_local i32 @send_bulk_static_data(%struct.snd_usb_midi_out_endpoint*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
