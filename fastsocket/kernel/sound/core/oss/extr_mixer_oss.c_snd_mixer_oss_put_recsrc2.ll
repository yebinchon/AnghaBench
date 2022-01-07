; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_recsrc2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_recsrc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_card*, %struct.snd_mixer_oss* }
%struct.snd_card = type { i32 }
%struct.snd_mixer_oss = type { i32, %struct.snd_mixer_oss_slot* }
%struct.snd_mixer_oss_slot = type { i64 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 }
%struct.snd_ctl_elem_value = type opaque
%struct.snd_ctl_elem_value.0 = type opaque
%struct.slot = type { i64, i32, i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ctl_elem_value.1 = type { i32, %struct.TYPE_4__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Capture Source\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_SIGNATURE = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, i32)* @snd_mixer_oss_put_recsrc2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_put_recsrc2(%struct.snd_mixer_oss_file* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer_oss_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_mixer_oss*, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca %struct.snd_mixer_oss_slot*, align 8
  %9 = alloca %struct.slot*, align 8
  %10 = alloca %struct.snd_ctl_elem_info*, align 8
  %11 = alloca %struct.snd_ctl_elem_value.1*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %15 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %14, i32 0, i32 0
  %16 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  store %struct.snd_card* %16, %struct.snd_card** %5, align 8
  %17 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %18 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %17, i32 0, i32 1
  %19 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %18, align 8
  store %struct.snd_mixer_oss* %19, %struct.snd_mixer_oss** %6, align 8
  store %struct.slot* null, %struct.slot** %9, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.snd_ctl_elem_value.1* @kzalloc(i32 16, i32 %20)
  %22 = bitcast %struct.snd_ctl_elem_value.1* %21 to %struct.snd_ctl_elem_info*
  store %struct.snd_ctl_elem_info* %22, %struct.snd_ctl_elem_info** %10, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.snd_ctl_elem_value.1* @kzalloc(i32 16, i32 %23)
  store %struct.snd_ctl_elem_value.1* %24, %struct.snd_ctl_elem_value.1** %11, align 8
  %25 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %10, align 8
  %26 = icmp eq %struct.snd_ctl_elem_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %29 = icmp eq %struct.snd_ctl_elem_value.1* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  br label %150

33:                                               ; preds = %27
  %34 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %35 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %34, i32 0, i32 0
  %36 = call i32 @down_read(i32* %35)
  %37 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %38 = call %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.snd_kcontrol* %38, %struct.snd_kcontrol** %7, align 8
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %40 = icmp ne %struct.snd_kcontrol* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  br label %146

44:                                               ; preds = %33
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %46 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %45, i32 0, i32 0
  %47 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %46, align 8
  %48 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %49 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %10, align 8
  %50 = bitcast %struct.snd_ctl_elem_info* %49 to %struct.snd_ctl_elem_value*
  %51 = call i32 %47(%struct.snd_kcontrol* %48, %struct.snd_ctl_elem_value* %50)
  store i32 %51, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %146

54:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %98, %54
  %56 = load i32, i32* %13, align 4
  %57 = icmp ult i32 %56, 32
  br i1 %57, label %58, label %101

58:                                               ; preds = %55
  %59 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %60 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %98

67:                                               ; preds = %58
  %68 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %69 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %68, i32 0, i32 1
  %70 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %70, i64 %72
  store %struct.snd_mixer_oss_slot* %73, %struct.snd_mixer_oss_slot** %8, align 8
  %74 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %8, align 8
  %75 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.slot*
  store %struct.slot* %77, %struct.slot** %9, align 8
  %78 = load %struct.slot*, %struct.slot** %9, align 8
  %79 = getelementptr inbounds %struct.slot, %struct.slot* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SNDRV_MIXER_OSS_SIGNATURE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  br label %98

84:                                               ; preds = %67
  %85 = load %struct.slot*, %struct.slot** %9, align 8
  %86 = getelementptr inbounds %struct.slot, %struct.slot* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CAPTURE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %98

92:                                               ; preds = %84
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %101

97:                                               ; preds = %92
  store %struct.slot* null, %struct.slot** %9, align 8
  br label %98

98:                                               ; preds = %97, %91, %83, %66
  %99 = load i32, i32* %13, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %55

101:                                              ; preds = %96, %55
  %102 = load %struct.slot*, %struct.slot** %9, align 8
  %103 = icmp ne %struct.slot* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  br label %146

105:                                              ; preds = %101
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %124, %105
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %10, align 8
  %109 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ult i32 %107, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %106
  %113 = load %struct.slot*, %struct.slot** %9, align 8
  %114 = getelementptr inbounds %struct.slot, %struct.slot* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %117 = getelementptr inbounds %struct.snd_ctl_elem_value.1, %struct.snd_ctl_elem_value.1* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %115, i32* %123, align 4
  br label %124

124:                                              ; preds = %112
  %125 = load i32, i32* %13, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %106

127:                                              ; preds = %106
  %128 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %129 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %128, i32 0, i32 1
  %130 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %129, align 8
  %131 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %132 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %133 = bitcast %struct.snd_ctl_elem_value.1* %132 to %struct.snd_ctl_elem_value.0*
  %134 = call i32 %130(%struct.snd_kcontrol* %131, %struct.snd_ctl_elem_value.0* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %127
  %138 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %139 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %138, i32 0, i32 0
  %140 = load %struct.snd_card*, %struct.snd_card** %139, align 8
  %141 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %142 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %143 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %142, i32 0, i32 2
  %144 = call i32 @snd_ctl_notify(%struct.snd_card* %140, i32 %141, i32* %143)
  br label %145

145:                                              ; preds = %137, %127
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %145, %104, %53, %41
  %147 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %148 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %147, i32 0, i32 0
  %149 = call i32 @up_read(i32* %148)
  br label %150

150:                                              ; preds = %146, %30
  %151 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %152 = call i32 @kfree(%struct.snd_ctl_elem_value.1* %151)
  %153 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %10, align 8
  %154 = bitcast %struct.snd_ctl_elem_info* %153 to %struct.snd_ctl_elem_value.1*
  %155 = call i32 @kfree(%struct.snd_ctl_elem_value.1* %154)
  %156 = load i32, i32* %12, align 4
  ret i32 %156
}

declare dso_local %struct.snd_ctl_elem_value.1* @kzalloc(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss*, i8*, i32) #1

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
