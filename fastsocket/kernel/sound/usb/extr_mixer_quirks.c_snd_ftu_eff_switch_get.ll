; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_ftu_eff_switch_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_ftu_eff_switch_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.snd_usb_audio = type { i32 }
%struct.usb_mixer_interface = type { i64 }
%struct.snd_ftu_eff_switch_priv_val = type { i32, i8, i64 }

@EINVAL = common dso_local global i32 0, align 4
@UAC_GET_CUR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ftu_eff_switch_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ftu_eff_switch_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.usb_mixer_interface*, align 8
  %8 = alloca %struct.snd_ftu_eff_switch_priv_val*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  store i32 6, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 2, i32* %13, align 4
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %15, align 1
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.snd_ftu_eff_switch_priv_val*
  store %struct.snd_ftu_eff_switch_priv_val* %19, %struct.snd_ftu_eff_switch_priv_val** %8, align 8
  %20 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %8, align 8
  %21 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %8, align 8
  %26 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 4
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 %27, i8* %33, align 1
  store i32 0, i32* %3, align 4
  br label %100

34:                                               ; preds = %2
  %35 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %8, align 8
  %36 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.usb_mixer_interface*
  store %struct.usb_mixer_interface* %38, %struct.usb_mixer_interface** %7, align 8
  %39 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %40 = icmp ne %struct.usb_mixer_interface* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @snd_BUG_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %100

48:                                               ; preds = %34
  %49 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %7, align 8
  %50 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.snd_usb_audio*
  store %struct.snd_usb_audio* %52, %struct.snd_usb_audio** %6, align 8
  %53 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %54 = icmp ne %struct.snd_usb_audio* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @snd_BUG_ON(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %100

62:                                               ; preds = %48
  %63 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %64 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %67 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usb_rcvctrlpipe(i32 %68, i32 0)
  %70 = load i32, i32* @UAC_GET_CUR, align 4
  %71 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %72 = load i32, i32* @USB_TYPE_CLASS, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @USB_DIR_IN, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %77 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %76)
  %78 = or i32 %77, 1536
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %80 = call i32 @snd_usb_ctl_msg(i32 %65, i32 %69, i32 %70, i32 %75, i32 256, i32 %78, i8* %79, i32 2)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %62
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %100

85:                                               ; preds = %62
  %86 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %89 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  store i8 %87, i8* %93, align 1
  %94 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %8, align 8
  %97 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %96, i32 0, i32 1
  store i8 %95, i8* %97, align 4
  %98 = load %struct.snd_ftu_eff_switch_priv_val*, %struct.snd_ftu_eff_switch_priv_val** %8, align 8
  %99 = getelementptr inbounds %struct.snd_ftu_eff_switch_priv_val, %struct.snd_ftu_eff_switch_priv_val* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %85, %83, %59, %45, %24
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
