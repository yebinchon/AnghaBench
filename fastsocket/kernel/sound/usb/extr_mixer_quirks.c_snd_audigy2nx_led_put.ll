; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_audigy2nx_led_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_audigy2nx_led_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.usb_mixer_interface = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_audigy2nx_led_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_audigy2nx_led_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.usb_mixer_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.usb_mixer_interface* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.usb_mixer_interface* %12, %struct.usb_mixer_interface** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %133

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %31 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %29, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %40 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @USB_ID(i32 1054, i32 12354)
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %28
  %47 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %48 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %53 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @usb_sndctrlpipe(i32 %56, i32 0)
  %58 = load i32, i32* @USB_DIR_OUT, align 4
  %59 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @USB_RECIP_OTHER, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @snd_usb_ctl_msg(i32 %51, i32 %57, i32 36, i32 %62, i32 %66, i32 0, i32* null, i32 0)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %46, %28
  %69 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %70 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @USB_ID(i32 1054, i32 12511)
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %68
  %77 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %78 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %83 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @usb_sndctrlpipe(i32 %86, i32 0)
  %88 = load i32, i32* @USB_DIR_OUT, align 4
  %89 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @USB_RECIP_OTHER, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @snd_usb_ctl_msg(i32 %81, i32 %87, i32 36, i32 %92, i32 %96, i32 0, i32* null, i32 0)
  store i32 %97, i32* %9, align 4
  br label %119

98:                                               ; preds = %68
  %99 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %100 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %105 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @usb_sndctrlpipe(i32 %108, i32 0)
  %110 = load i32, i32* @USB_DIR_OUT, align 4
  %111 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @USB_RECIP_OTHER, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 2
  %118 = call i32 @snd_usb_ctl_msg(i32 %103, i32 %109, i32 36, i32 %114, i32 %115, i32 %117, i32* null, i32 0)
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %98, %76
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %133

124:                                              ; preds = %119
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %127 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %124, %122, %25
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.usb_mixer_interface* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @USB_ID(i32, i32) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
