; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_quirks.c_snd_usb_accessmusic_boot_quirk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_quirks.c_snd_usb_accessmusic_boot_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@snd_usb_accessmusic_boot_quirk.seq = internal constant [4 x i32] [i32 78, i32 115, i32 82, i32 1], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @snd_usb_accessmusic_boot_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_accessmusic_boot_quirk(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %7 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @snd_usb_accessmusic_boot_quirk.seq, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kmemdup(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @snd_usb_accessmusic_boot_quirk.seq, i64 0, i64 0), i32 %7, i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = call i32 @usb_sndintpipe(%struct.usb_device* %17, i32 5)
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @snd_usb_accessmusic_boot_quirk.seq, i64 0, i64 0))
  %21 = call i32 @usb_interrupt_msg(%struct.usb_device* %16, i32 %18, i8* %19, i32 %20, i32* %5, i32 1000)
  store i32 %21, i32* %4, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @kfree(i8* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %26, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i8* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @usb_interrupt_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
