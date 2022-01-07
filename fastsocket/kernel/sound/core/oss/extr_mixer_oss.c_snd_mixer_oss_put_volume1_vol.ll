; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_volume1_vol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_volume1_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_mixer_oss_slot = type { i32 }
%struct.snd_ctl_elem_info = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i8** }
%struct.snd_ctl_elem_value = type { i64, i32, %struct.TYPE_4__ }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)* }
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_ctl_elem_value.1 = type opaque

@ID_UNKNOWN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_BOOLEAN = common dso_local global i64 0, align 8
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32, i32)* @snd_mixer_oss_put_volume1_vol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_slot* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_mixer_oss_file*, align 8
  %7 = alloca %struct.snd_mixer_oss_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_ctl_elem_info*, align 8
  %12 = alloca %struct.snd_ctl_elem_value*, align 8
  %13 = alloca %struct.snd_kcontrol*, align 8
  %14 = alloca %struct.snd_card*, align 8
  %15 = alloca i32, align 4
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %6, align 8
  store %struct.snd_mixer_oss_slot* %1, %struct.snd_mixer_oss_slot** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %6, align 8
  %17 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %16, i32 0, i32 0
  %18 = load %struct.snd_card*, %struct.snd_card** %17, align 8
  store %struct.snd_card* %18, %struct.snd_card** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ID_UNKNOWN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %149

23:                                               ; preds = %5
  %24 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %25 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %24, i32 0, i32 0
  %26 = call i32 @down_read(i32* %25)
  %27 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.snd_kcontrol* @snd_ctl_find_numid(%struct.snd_card* %27, i32 %28)
  store %struct.snd_kcontrol* %29, %struct.snd_kcontrol** %13, align 8
  %30 = icmp eq %struct.snd_kcontrol* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %33 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %32, i32 0, i32 0
  %34 = call i32 @up_read(i32* %33)
  br label %149

35:                                               ; preds = %23
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.snd_ctl_elem_value* @kzalloc(i32 40, i32 %36)
  %38 = bitcast %struct.snd_ctl_elem_value* %37 to %struct.snd_ctl_elem_info*
  store %struct.snd_ctl_elem_info* %38, %struct.snd_ctl_elem_info** %11, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.snd_ctl_elem_value* @kzalloc(i32 40, i32 %39)
  store %struct.snd_ctl_elem_value* %40, %struct.snd_ctl_elem_value** %12, align 8
  %41 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %42 = icmp eq %struct.snd_ctl_elem_info* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %12, align 8
  %45 = icmp eq %struct.snd_ctl_elem_value* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %35
  br label %140

47:                                               ; preds = %43
  %48 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %49 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %48, i32 0, i32 2
  %50 = load i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)** %49, align 8
  %51 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %52 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %53 = bitcast %struct.snd_ctl_elem_info* %52 to %struct.snd_ctl_elem_value.1*
  %54 = call i64 %50(%struct.snd_kcontrol* %51, %struct.snd_ctl_elem_value.1* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %140

57:                                               ; preds = %47
  %58 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SNDRV_CTL_ELEM_TYPE_BOOLEAN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %72 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %140

78:                                               ; preds = %70, %63, %57
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %81 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %86 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @snd_mixer_oss_conv2(i32 %79, i64 %84, i32 %89)
  %91 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %12, align 8
  %92 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  store i8* %90, i8** %96, align 8
  %97 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %98 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %120

101:                                              ; preds = %78
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %104 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %109 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @snd_mixer_oss_conv2(i32 %102, i64 %107, i32 %112)
  %114 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %12, align 8
  %115 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  store i8* %113, i8** %119, align 8
  br label %120

120:                                              ; preds = %101, %78
  %121 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %122 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %121, i32 0, i32 0
  %123 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %122, align 8
  %124 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %125 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %12, align 8
  %126 = bitcast %struct.snd_ctl_elem_value* %125 to %struct.snd_ctl_elem_value.0*
  %127 = call i32 %123(%struct.snd_kcontrol* %124, %struct.snd_ctl_elem_value.0* %126)
  store i32 %127, i32* %15, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %140

130:                                              ; preds = %120
  %131 = load i32, i32* %15, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %135 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %136 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %137 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %136, i32 0, i32 1
  %138 = call i32 @snd_ctl_notify(%struct.snd_card* %134, i32 %135, i32* %137)
  br label %139

139:                                              ; preds = %133, %130
  br label %140

140:                                              ; preds = %139, %129, %77, %56, %46
  %141 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %142 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %141, i32 0, i32 0
  %143 = call i32 @up_read(i32* %142)
  %144 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %12, align 8
  %145 = call i32 @kfree(%struct.snd_ctl_elem_value* %144)
  %146 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %147 = bitcast %struct.snd_ctl_elem_info* %146 to %struct.snd_ctl_elem_value*
  %148 = call i32 @kfree(%struct.snd_ctl_elem_value* %147)
  br label %149

149:                                              ; preds = %140, %31, %22
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_numid(%struct.snd_card*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.snd_ctl_elem_value* @kzalloc(i32, i32) #1

declare dso_local i8* @snd_mixer_oss_conv2(i32, i64, i32) #1

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
