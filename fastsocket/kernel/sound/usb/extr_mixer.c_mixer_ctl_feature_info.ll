; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_mixer_ctl_feature_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_mixer_ctl_feature_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, %struct.TYPE_6__*, %struct.usb_mixer_elem_info* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_mixer_elem_info = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_ctl_elem_info = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }

@USB_MIXER_BOOLEAN = common dso_local global i64 0, align 8
@USB_MIXER_INV_BOOLEAN = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @mixer_ctl_feature_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_ctl_feature_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.usb_mixer_elem_info*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %6, i32 0, i32 2
  %8 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %7, align 8
  store %struct.usb_mixer_elem_info* %8, %struct.usb_mixer_elem_info** %5, align 8
  %9 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_MIXER_BOOLEAN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USB_MIXER_INV_BOOLEAN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BOOLEAN, align 4
  %22 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %26 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %30 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %35 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @USB_MIXER_BOOLEAN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %28
  %40 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %41 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @USB_MIXER_INV_BOOLEAN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39, %28
  %46 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %124

54:                                               ; preds = %39
  %55 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %56 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %99, label %59

59:                                               ; preds = %54
  %60 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %61 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %62 = call i32 @get_min_max_with_quirks(%struct.usb_mixer_elem_info* %60, i32 0, %struct.snd_kcontrol* %61)
  %63 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %64 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %59
  %68 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %69 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %72 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %67
  %76 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %77 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %81 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %79
  store i32 %86, i32* %84, align 4
  %87 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %88 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %87, i32 0, i32 6
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %95 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %96 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %95, i32 0, i32 0
  %97 = call i32 @snd_ctl_notify(i32 %93, i32 %94, i32* %96)
  br label %98

98:                                               ; preds = %75, %67, %59
  br label %99

99:                                               ; preds = %98, %54
  %100 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %101 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %105 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %108 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %106, %109
  %111 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %112 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %110, %113
  %115 = sub nsw i32 %114, 1
  %116 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %117 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = sdiv i32 %115, %118
  %120 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %121 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 8
  br label %124

124:                                              ; preds = %99, %45
  ret i32 0
}

declare dso_local i32 @get_min_max_with_quirks(%struct.usb_mixer_elem_info*, i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
