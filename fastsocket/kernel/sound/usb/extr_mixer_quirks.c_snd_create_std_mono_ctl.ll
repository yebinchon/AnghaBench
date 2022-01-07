; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_create_std_mono_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_create_std_mono_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.usb_mixer_elem_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.usb_mixer_interface* }
%struct.snd_kcontrol = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_usb_feature_unit_ctl = common dso_local global i32 0, align 4
@usb_mixer_elem_free = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, i32, i32, i32, i32, i8*, i32*)* @snd_create_std_mono_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_create_std_mono_ctl(%struct.usb_mixer_interface* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_mixer_interface*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.usb_mixer_elem_info*, align 8
  %18 = alloca %struct.snd_kcontrol*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.usb_mixer_elem_info* @kzalloc(i32 64, i32 %19)
  store %struct.usb_mixer_elem_info* %20, %struct.usb_mixer_elem_info** %17, align 8
  %21 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %22 = icmp ne %struct.usb_mixer_elem_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %100

26:                                               ; preds = %7
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %29 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %9, align 8
  %31 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %32 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %31, i32 0, i32 10
  store %struct.usb_mixer_interface* %30, %struct.usb_mixer_interface** %32, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %35 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %37 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %40 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %43 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %45 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %47 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %46, i32 0, i32 5
  store i32 1, i32* %47, align 4
  %48 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %49 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %48, i32 0, i32 8
  store i64 0, i64* %49, align 8
  %50 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %51 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %50, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %53 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @snd_usb_feature_unit_ctl, align 4
  %55 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %56 = call %struct.snd_kcontrol* @snd_ctl_new1(i32 %54, %struct.usb_mixer_elem_info* %55)
  store %struct.snd_kcontrol* %56, %struct.snd_kcontrol** %18, align 8
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %58 = icmp ne %struct.snd_kcontrol* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %26
  %60 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %17, align 8
  %61 = call i32 @kfree(%struct.usb_mixer_elem_info* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %100

64:                                               ; preds = %26
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %66 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @snprintf(i32 %68, i32 4, i8* %69)
  %71 = load i32, i32* @usb_mixer_elem_free, align 4
  %72 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %73 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %64
  %77 = load i32*, i32** %15, align 8
  %78 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %79 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32* %77, i32** %80, align 8
  %81 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %82 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %85 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %83
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %76, %64
  %92 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %9, align 8
  %93 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %94 = call i32 @snd_usb_mixer_add_control(%struct.usb_mixer_interface* %92, %struct.snd_kcontrol* %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %8, align 4
  br label %100

99:                                               ; preds = %91
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %99, %97, %59, %23
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local %struct.usb_mixer_elem_info* @kzalloc(i32, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32, %struct.usb_mixer_elem_info*) #1

declare dso_local i32 @kfree(%struct.usb_mixer_elem_info*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @snd_usb_mixer_add_control(%struct.usb_mixer_interface*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
