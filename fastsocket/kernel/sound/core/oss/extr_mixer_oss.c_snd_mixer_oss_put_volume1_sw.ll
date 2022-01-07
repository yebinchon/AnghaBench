; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_volume1_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_volume1_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_mixer_oss_slot = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ctl_elem_value = type { i32, %struct.TYPE_4__ }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)* }
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_ctl_elem_value.1 = type opaque

@ID_UNKNOWN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32, i32, i32)* @snd_mixer_oss_put_volume1_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_slot* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.snd_mixer_oss_file*, align 8
  %8 = alloca %struct.snd_mixer_oss_slot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_ctl_elem_info*, align 8
  %14 = alloca %struct.snd_ctl_elem_value*, align 8
  %15 = alloca %struct.snd_kcontrol*, align 8
  %16 = alloca %struct.snd_card*, align 8
  %17 = alloca i32, align 4
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %7, align 8
  store %struct.snd_mixer_oss_slot* %1, %struct.snd_mixer_oss_slot** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %19 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %18, i32 0, i32 0
  %20 = load %struct.snd_card*, %struct.snd_card** %19, align 8
  store %struct.snd_card* %20, %struct.snd_card** %16, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @ID_UNKNOWN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %151

25:                                               ; preds = %6
  %26 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  %27 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %26, i32 0, i32 0
  %28 = call i32 @down_read(i32* %27)
  %29 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.snd_kcontrol* @snd_ctl_find_numid(%struct.snd_card* %29, i32 %30)
  store %struct.snd_kcontrol* %31, %struct.snd_kcontrol** %15, align 8
  %32 = icmp eq %struct.snd_kcontrol* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  %35 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %34, i32 0, i32 0
  %36 = call i32 @up_read(i32* %35)
  br label %151

37:                                               ; preds = %25
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.snd_ctl_elem_value* @kzalloc(i32 16, i32 %38)
  %40 = bitcast %struct.snd_ctl_elem_value* %39 to %struct.snd_ctl_elem_info*
  store %struct.snd_ctl_elem_info* %40, %struct.snd_ctl_elem_info** %13, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.snd_ctl_elem_value* @kzalloc(i32 16, i32 %41)
  store %struct.snd_ctl_elem_value* %42, %struct.snd_ctl_elem_value** %14, align 8
  %43 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %13, align 8
  %44 = icmp eq %struct.snd_ctl_elem_info* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %47 = icmp eq %struct.snd_ctl_elem_value* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %37
  br label %142

49:                                               ; preds = %45
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %51 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %50, i32 0, i32 2
  %52 = load i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)** %51, align 8
  %53 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %54 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %13, align 8
  %55 = bitcast %struct.snd_ctl_elem_info* %54 to %struct.snd_ctl_elem_value.1*
  %56 = call i64 %52(%struct.snd_kcontrol* %53, %struct.snd_ctl_elem_value.1* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %142

59:                                               ; preds = %49
  %60 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %13, align 8
  %61 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %106

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %70 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %68, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sgt i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %80 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 3, i32 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  store i32 %78, i32* %89, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %64
  %93 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %94 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 0, i32* %98, align 4
  %99 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %100 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %92, %64
  br label %122

106:                                              ; preds = %59
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp sgt i32 %110, 0
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ true, %106 ], [ %111, %109 ]
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %117 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %115, i32* %121, align 4
  br label %122

122:                                              ; preds = %112, %105
  %123 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %124 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %123, i32 0, i32 0
  %125 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %124, align 8
  %126 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %127 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %128 = bitcast %struct.snd_ctl_elem_value* %127 to %struct.snd_ctl_elem_value.0*
  %129 = call i32 %125(%struct.snd_kcontrol* %126, %struct.snd_ctl_elem_value.0* %128)
  store i32 %129, i32* %17, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %142

132:                                              ; preds = %122
  %133 = load i32, i32* %17, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  %137 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %138 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %139 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %138, i32 0, i32 1
  %140 = call i32 @snd_ctl_notify(%struct.snd_card* %136, i32 %137, i32* %139)
  br label %141

141:                                              ; preds = %135, %132
  br label %142

142:                                              ; preds = %141, %131, %58, %48
  %143 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  %144 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %143, i32 0, i32 0
  %145 = call i32 @up_read(i32* %144)
  %146 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %147 = call i32 @kfree(%struct.snd_ctl_elem_value* %146)
  %148 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %13, align 8
  %149 = bitcast %struct.snd_ctl_elem_info* %148 to %struct.snd_ctl_elem_value*
  %150 = call i32 @kfree(%struct.snd_ctl_elem_value* %149)
  br label %151

151:                                              ; preds = %142, %33, %24
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_numid(%struct.snd_card*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.snd_ctl_elem_value* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
