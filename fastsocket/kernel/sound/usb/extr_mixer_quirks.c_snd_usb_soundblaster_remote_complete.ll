; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_usb_soundblaster_remote_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_usb_soundblaster_remote_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64, %struct.usb_mixer_interface* }
%struct.usb_mixer_interface = type { i32*, i32, i32, %struct.rc_config* }
%struct.rc_config = type { i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @snd_usb_soundblaster_remote_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usb_soundblaster_remote_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca %struct.rc_config*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 2
  %8 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  store %struct.usb_mixer_interface* %8, %struct.usb_mixer_interface** %3, align 8
  %9 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %10 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %9, i32 0, i32 3
  %11 = load %struct.rc_config*, %struct.rc_config** %10, align 8
  store %struct.rc_config* %11, %struct.rc_config** %4, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.rc_config*, %struct.rc_config** %4, align 8
  %21 = getelementptr inbounds %struct.rc_config, %struct.rc_config* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %1
  br label %71

25:                                               ; preds = %16
  %26 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %27 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.rc_config*, %struct.rc_config** %4, align 8
  %30 = getelementptr inbounds %struct.rc_config, %struct.rc_config* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.rc_config*, %struct.rc_config** %4, align 8
  %35 = getelementptr inbounds %struct.rc_config, %struct.rc_config* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %51

38:                                               ; preds = %25
  %39 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %40 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.rc_config*, %struct.rc_config** %4, align 8
  %43 = getelementptr inbounds %struct.rc_config, %struct.rc_config* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %38, %25
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.rc_config*, %struct.rc_config** %4, align 8
  %54 = getelementptr inbounds %struct.rc_config, %struct.rc_config* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %59 = load %struct.rc_config*, %struct.rc_config** %4, align 8
  %60 = getelementptr inbounds %struct.rc_config, %struct.rc_config* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @snd_usb_mixer_notify_id(%struct.usb_mixer_interface* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %66 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = call i32 (...) @wmb()
  %68 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %69 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %68, i32 0, i32 2
  %70 = call i32 @wake_up(i32* %69)
  br label %71

71:                                               ; preds = %63, %24
  ret void
}

declare dso_local i32 @snd_usb_mixer_notify_id(%struct.usb_mixer_interface*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
