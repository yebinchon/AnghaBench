; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_audigy2nx_controls_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_audigy2nx_controls_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@snd_audigy2nx_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @snd_audigy2nx_controls_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_audigy2nx_controls_create(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %89, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @snd_audigy2nx_controls, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %92

11:                                               ; preds = %6
  %12 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %13 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @USB_ID(i32 1054, i32 12354)
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %89

23:                                               ; preds = %19, %11
  %24 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %25 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @USB_ID(i32 1054, i32 12511)
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %89

35:                                               ; preds = %31, %23
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %40 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @USB_ID(i32 1054, i32 12352)
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %70, label %46

46:                                               ; preds = %38
  %47 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %48 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @USB_ID(i32 1054, i32 12354)
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %46
  %55 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %56 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @USB_ID(i32 1054, i32 12511)
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %54
  %63 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %64 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @USB_ID(i32 1054, i32 12360)
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62, %54, %46, %38
  br label %92

71:                                               ; preds = %62, %35
  %72 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %73 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** @snd_audigy2nx_controls, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %82 = call i32 @snd_ctl_new1(i32* %80, %struct.usb_mixer_interface* %81)
  %83 = call i32 @snd_ctl_add(i32 %76, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %97

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %34, %22
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %6

92:                                               ; preds = %70, %6
  %93 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %94 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 1, i32* %96, align 4
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %92, %86
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @USB_ID(i32, i32) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.usb_mixer_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
