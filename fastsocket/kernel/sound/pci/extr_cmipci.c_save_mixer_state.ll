; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_save_mixer_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_save_mixer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.cmipci = type { i32, i64*, i32, %struct.snd_kcontrol** }
%struct.snd_kcontrol = type { i32, %struct.TYPE_7__*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_ctl_elem_value = type opaque
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_ctl_elem_value.1 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CM_SAVED_MIXERS = common dso_local global i32 0, align 4
@cm_saved_mixer = common dso_local global %struct.TYPE_8__* null, align 8
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*)* @save_mixer_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_mixer_state(%struct.cmipci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmipci*, align 8
  %4 = alloca %struct.snd_ctl_elem_value.1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %3, align 8
  %8 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %9 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %122, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.snd_ctl_elem_value.1* @kmalloc(i32 8, i32 %13)
  store %struct.snd_ctl_elem_value.1* %14, %struct.snd_ctl_elem_value.1** %4, align 8
  %15 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %4, align 8
  %16 = icmp ne %struct.snd_ctl_elem_value.1* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %123

20:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %114, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @CM_SAVED_MIXERS, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %117

25:                                               ; preds = %21
  %26 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %27 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %26, i32 0, i32 3
  %28 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %28, i64 %30
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %31, align 8
  store %struct.snd_kcontrol* %32, %struct.snd_kcontrol** %6, align 8
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %34 = icmp ne %struct.snd_kcontrol* %33, null
  br i1 %34, label %35, label %113

35:                                               ; preds = %25
  %36 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %4, align 8
  %37 = call i32 @memset(%struct.snd_ctl_elem_value.1* %36, i32 0, i32 8)
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 3
  %40 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %39, align 8
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %42 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %4, align 8
  %43 = bitcast %struct.snd_ctl_elem_value.1* %42 to %struct.snd_ctl_elem_value.0*
  %44 = call i32 %40(%struct.snd_kcontrol* %41, %struct.snd_ctl_elem_value.0* %43)
  %45 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ctl_elem_value.1, %struct.snd_ctl_elem_value.1* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %53 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %51, i64* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cm_saved_mixer, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %4, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_value.1, %struct.snd_ctl_elem_value.1* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  store i64 %63, i64* %69, align 8
  %70 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %72 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %4, align 8
  %79 = getelementptr inbounds %struct.snd_ctl_elem_value.1, %struct.snd_ctl_elem_value.1* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %77, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %35
  %87 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %88 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %87, i32 0, i32 2
  %89 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %88, align 8
  %90 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %91 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %4, align 8
  %92 = bitcast %struct.snd_ctl_elem_value.1* %91 to %struct.snd_ctl_elem_value*
  %93 = call i32 %89(%struct.snd_kcontrol* %90, %struct.snd_ctl_elem_value* %92)
  %94 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %86, %35
  %98 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %99 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %100 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %98
  store i32 %105, i32* %103, align 4
  %106 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %107 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %111 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %110, i32 0, i32 0
  %112 = call i32 @snd_ctl_notify(i32 %108, i32 %109, i32* %111)
  br label %113

113:                                              ; preds = %97, %25
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %5, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %21

117:                                              ; preds = %21
  %118 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %4, align 8
  %119 = call i32 @kfree(%struct.snd_ctl_elem_value.1* %118)
  %120 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %121 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %1
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %17
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.snd_ctl_elem_value.1* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.snd_ctl_elem_value.1*, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
