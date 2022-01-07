; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_proc.c_snd_usb_audio_create_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_proc.c_snd_usb_audio_create_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.snd_info_entry = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"usbbus\00", align 1
@proc_audio_usbbus_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"usbid\00", align 1
@proc_audio_usbid_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_audio_create_proc(%struct.snd_usb_audio* %0) #0 {
  %2 = alloca %struct.snd_usb_audio*, align 8
  %3 = alloca %struct.snd_info_entry*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %2, align 8
  %4 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %2, align 8
  %5 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @snd_card_proc_new(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.snd_info_entry** %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %11 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %2, align 8
  %12 = load i32, i32* @proc_audio_usbbus_read, align 4
  %13 = call i32 @snd_info_set_text_ops(%struct.snd_info_entry* %10, %struct.snd_usb_audio* %11, i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %2, align 8
  %16 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @snd_card_proc_new(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.snd_info_entry** %3)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %22 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %2, align 8
  %23 = load i32, i32* @proc_audio_usbid_read, align 4
  %24 = call i32 @snd_info_set_text_ops(%struct.snd_info_entry* %21, %struct.snd_usb_audio* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @snd_card_proc_new(i32, i8*, %struct.snd_info_entry**) #1

declare dso_local i32 @snd_info_set_text_ops(%struct.snd_info_entry*, %struct.snd_usb_audio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
