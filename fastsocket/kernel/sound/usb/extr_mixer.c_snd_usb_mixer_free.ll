; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_snd_usb_mixer_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_snd_usb_mixer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.usb_mixer_interface*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.usb_mixer_interface* }
%struct.TYPE_2__ = type { %struct.usb_mixer_interface* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_mixer_interface*)* @snd_usb_mixer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usb_mixer_free(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca %struct.usb_mixer_interface*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %2, align 8
  %3 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %4 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %3, i32 0, i32 3
  %5 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %6 = call i32 @kfree(%struct.usb_mixer_interface* %5)
  %7 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %8 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %13 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %15, align 8
  %17 = call i32 @kfree(%struct.usb_mixer_interface* %16)
  %18 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %19 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @usb_free_urb(%struct.TYPE_2__* %20)
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %24 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @usb_free_urb(%struct.TYPE_2__* %25)
  %27 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %28 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %27, i32 0, i32 0
  %29 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %28, align 8
  %30 = call i32 @kfree(%struct.usb_mixer_interface* %29)
  %31 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %32 = call i32 @kfree(%struct.usb_mixer_interface* %31)
  ret void
}

declare dso_local i32 @kfree(%struct.usb_mixer_interface*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
