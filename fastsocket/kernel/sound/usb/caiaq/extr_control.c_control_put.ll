; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_control.c_control_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_control.c_control_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_usb_audio = type { i32 }
%struct.snd_usb_caiaqdev = type { i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@EP1_CMD_WRITE_IO = common dso_local global i8 0, align 1
@USB_VID_NATIVEINSTRUMENTS = common dso_local global i32 0, align 4
@USB_PID_TRAKTORKONTROLX1 = common dso_local global i32 0, align 4
@EP1_CMD_DIMM_LEDS = common dso_local global i8 0, align 1
@CNT_INTVAL = common dso_local global i32 0, align 4
@USB_PID_TRAKTORKONTROLS4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @control_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca %struct.snd_usb_caiaqdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_usb_audio* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_usb_audio* %13, %struct.snd_usb_audio** %5, align 8
  %14 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %15 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.snd_usb_caiaqdev* @caiaqdev(i32 %16)
  store %struct.snd_usb_caiaqdev* %17, %struct.snd_usb_caiaqdev** %6, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i8, i8* @EP1_CMD_WRITE_IO, align 1
  store i8 %28, i8* %9, align 1
  %29 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %30 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @USB_VID_NATIVEINSTRUMENTS, align 4
  %34 = load i32, i32* @USB_PID_TRAKTORKONTROLX1, align 4
  %35 = call i64 @USB_ID(i32 %33, i32 %34)
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i8, i8* @EP1_CMD_DIMM_LEDS, align 1
  store i8 %38, i8* %9, align 1
  br label %39

39:                                               ; preds = %37, %2
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @CNT_INTVAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %96

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @CNT_INTVAL, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %51 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %57 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @USB_VID_NATIVEINSTRUMENTS, align 4
  %61 = load i32, i32* @USB_PID_TRAKTORKONTROLS4, align 4
  %62 = call i64 @USB_ID(i32 %60, i32 %61)
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %44
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %67 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %72 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %76 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %80 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @usb_sndbulkpipe(i32 %82, i32 8)
  %84 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %85 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @usb_bulk_msg(i32 %78, i32 %83, i32* %86, i32 8, i32* %11, i32 200)
  br label %95

88:                                               ; preds = %44
  %89 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %90 = load i8, i8* %9, align 1
  %91 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %92 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @snd_usb_caiaq_send_command(%struct.snd_usb_caiaqdev* %89, i8 zeroext %90, i32* %93, i32 8)
  br label %95

95:                                               ; preds = %88, %64
  br label %133

96:                                               ; preds = %39
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = srem i32 %100, 8
  %102 = shl i32 1, %101
  %103 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %104 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sdiv i32 %106, 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %102
  store i32 %111, i32* %109, align 4
  br label %126

112:                                              ; preds = %96
  %113 = load i32, i32* %7, align 4
  %114 = srem i32 %113, 8
  %115 = shl i32 1, %114
  %116 = xor i32 %115, -1
  %117 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %118 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sdiv i32 %120, 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %116
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %112, %99
  %127 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %128 = load i8, i8* %9, align 1
  %129 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %130 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @snd_usb_caiaq_send_command(%struct.snd_usb_caiaqdev* %127, i8 zeroext %128, i32* %131, i32 8)
  br label %133

133:                                              ; preds = %126, %95
  ret i32 1
}

declare dso_local %struct.snd_usb_audio* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_usb_caiaqdev* @caiaqdev(i32) #1

declare dso_local i64 @USB_ID(i32, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @snd_usb_caiaq_send_command(%struct.snd_usb_caiaqdev*, i8 zeroext, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
