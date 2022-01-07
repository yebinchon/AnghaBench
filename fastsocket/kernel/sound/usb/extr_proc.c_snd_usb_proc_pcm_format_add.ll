; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_proc.c_snd_usb_proc_pcm_format_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_proc.c_snd_usb_proc_pcm_format_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_stream = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_info_entry = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"stream%d\00", align 1
@proc_pcm_format_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_proc_pcm_format_add(%struct.snd_usb_stream* %0) #0 {
  %2 = alloca %struct.snd_usb_stream*, align 8
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca %struct.snd_card*, align 8
  store %struct.snd_usb_stream* %0, %struct.snd_usb_stream** %2, align 8
  %6 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  store %struct.snd_card* %10, %struct.snd_card** %5, align 8
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %12 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %18 = call i32 @snd_card_proc_new(%struct.snd_card* %16, i8* %17, %struct.snd_info_entry** %3)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %22 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %2, align 8
  %23 = load i32, i32* @proc_pcm_format_read, align 4
  %24 = call i32 @snd_info_set_text_ops(%struct.snd_info_entry* %21, %struct.snd_usb_stream* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_card_proc_new(%struct.snd_card*, i8*, %struct.snd_info_entry**) #1

declare dso_local i32 @snd_info_set_text_ops(%struct.snd_info_entry*, %struct.snd_usb_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
