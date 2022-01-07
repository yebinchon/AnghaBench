; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_ftu_eff_switch_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_ftu_eff_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_usb_audio = type { i32 }
%struct.snd_ftu_eff_switch_priv_val = type { i32, i32, i64 }
%struct.usb_mixer_interface = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@UAC_GET_CUR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@UAC_SET_CUR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ftu_eff_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ftu_eff_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.snd_ftu_eff_switch_priv_val*, align 8
  %8 = alloca %struct.usb_mixer_interface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  store i32 6, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 2, i32* %16, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.snd_ftu_eff_switch_priv_val*
  store %struct.snd_ftu_eff_switch_priv_val* %20, %struct.snd_ftu_eff_switch_priv_val** %7, align 8
  %21 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %7, align 8
  %22 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %7, align 8
  %32 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.usb_mixer_interface*
  store %struct.usb_mixer_interface* %34, %struct.usb_mixer_interface** %8, align 8
  %35 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %8, align 8
  %36 = icmp ne %struct.usb_mixer_interface* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @snd_BUG_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %134

44:                                               ; preds = %2
  %45 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %8, align 8
  %46 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.snd_usb_audio*
  store %struct.snd_usb_audio* %48, %struct.snd_usb_audio** %6, align 8
  %49 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %50 = icmp ne %struct.snd_usb_audio* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @snd_BUG_ON(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %134

58:                                               ; preds = %44
  %59 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %7, align 8
  %60 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %95, label %63

63:                                               ; preds = %58
  %64 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %65 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %68 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @usb_rcvctrlpipe(i32 %69, i32 0)
  %71 = load i32, i32* @UAC_GET_CUR, align 4
  %72 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %73 = load i32, i32* @USB_TYPE_CLASS, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @USB_DIR_IN, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %78 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %77)
  %79 = or i32 %78, 1536
  %80 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %81 = call i32 @snd_usb_ctl_msg(i32 %66, i32 %70, i32 %71, i32 %76, i32 256, i32 %79, i8* %80, i32 2)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %63
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  br label %134

86:                                               ; preds = %63
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %7, align 8
  %92 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %7, align 8
  %94 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %86, %58
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %132

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 %101, i8* %102, align 1
  %103 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  store i8 0, i8* %103, align 1
  %104 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %105 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %108 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @usb_sndctrlpipe(i32 %109, i32 0)
  %111 = load i32, i32* @UAC_SET_CUR, align 4
  %112 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %113 = load i32, i32* @USB_TYPE_CLASS, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @USB_DIR_OUT, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %118 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %117)
  %119 = or i32 %118, 1536
  %120 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %121 = call i32 @snd_usb_ctl_msg(i32 %106, i32 %110, i32 %111, i32 %116, i32 256, i32 %119, i8* %120, i32 2)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %99
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %3, align 4
  br label %134

126:                                              ; preds = %99
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %7, align 8
  %129 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %7, align 8
  %131 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  store i32 1, i32* %9, align 4
  br label %132

132:                                              ; preds = %126, %95
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %124, %84, %55, %41
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
