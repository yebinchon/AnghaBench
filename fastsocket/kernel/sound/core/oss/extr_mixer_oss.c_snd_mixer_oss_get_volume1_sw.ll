; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_volume1_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_volume1_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_mixer_oss_slot = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ctl_elem_value = type { i32, %struct.TYPE_4__ }
%struct.snd_kcontrol = type { i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)* }
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_ctl_elem_value.1 = type opaque

@ID_UNKNOWN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32*, i32*, i32)* @snd_mixer_oss_get_volume1_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_slot* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.snd_mixer_oss_file*, align 8
  %8 = alloca %struct.snd_mixer_oss_slot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_ctl_elem_info*, align 8
  %14 = alloca %struct.snd_ctl_elem_value*, align 8
  %15 = alloca %struct.snd_kcontrol*, align 8
  %16 = alloca %struct.snd_card*, align 8
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %7, align 8
  store %struct.snd_mixer_oss_slot* %1, %struct.snd_mixer_oss_slot** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %18 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %17, i32 0, i32 0
  %19 = load %struct.snd_card*, %struct.snd_card** %18, align 8
  store %struct.snd_card* %19, %struct.snd_card** %16, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ID_UNKNOWN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %117

24:                                               ; preds = %6
  %25 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  %26 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %25, i32 0, i32 0
  %27 = call i32 @down_read(i32* %26)
  %28 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.snd_kcontrol* @snd_ctl_find_numid(%struct.snd_card* %28, i32 %29)
  store %struct.snd_kcontrol* %30, %struct.snd_kcontrol** %15, align 8
  %31 = icmp eq %struct.snd_kcontrol* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  %34 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %33, i32 0, i32 0
  %35 = call i32 @up_read(i32* %34)
  br label %117

36:                                               ; preds = %24
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.snd_ctl_elem_value* @kzalloc(i32 16, i32 %37)
  %39 = bitcast %struct.snd_ctl_elem_value* %38 to %struct.snd_ctl_elem_info*
  store %struct.snd_ctl_elem_info* %39, %struct.snd_ctl_elem_info** %13, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.snd_ctl_elem_value* @kzalloc(i32 16, i32 %40)
  store %struct.snd_ctl_elem_value* %41, %struct.snd_ctl_elem_value** %14, align 8
  %42 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %13, align 8
  %43 = icmp eq %struct.snd_ctl_elem_info* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %46 = icmp eq %struct.snd_ctl_elem_value* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %36
  br label %108

48:                                               ; preds = %44
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %49, i32 0, i32 1
  %51 = load i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)** %50, align 8
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %53 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %13, align 8
  %54 = bitcast %struct.snd_ctl_elem_info* %53 to %struct.snd_ctl_elem_value.1*
  %55 = call i64 %51(%struct.snd_kcontrol* %52, %struct.snd_ctl_elem_value.1* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %108

58:                                               ; preds = %48
  %59 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %60 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %59, i32 0, i32 0
  %61 = load i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %60, align 8
  %62 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %63 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %64 = bitcast %struct.snd_ctl_elem_value* %63 to %struct.snd_ctl_elem_value.0*
  %65 = call i64 %61(%struct.snd_kcontrol* %62, %struct.snd_ctl_elem_value.0* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %108

68:                                               ; preds = %58
  %69 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %70 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %68
  %78 = load i32*, i32** %10, align 8
  store i32 0, i32* %78, align 4
  %79 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %13, align 8
  %80 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32*, i32** %11, align 8
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %77
  br label %86

86:                                               ; preds = %85, %68
  %87 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %13, align 8
  %88 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %93 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 3, i32 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %96, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %91
  %106 = load i32*, i32** %11, align 8
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %91, %86
  br label %108

108:                                              ; preds = %107, %67, %57, %47
  %109 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  %110 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %109, i32 0, i32 0
  %111 = call i32 @up_read(i32* %110)
  %112 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %14, align 8
  %113 = call i32 @kfree(%struct.snd_ctl_elem_value* %112)
  %114 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %13, align 8
  %115 = bitcast %struct.snd_ctl_elem_info* %114 to %struct.snd_ctl_elem_value*
  %116 = call i32 @kfree(%struct.snd_ctl_elem_value* %115)
  br label %117

117:                                              ; preds = %108, %32, %23
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_numid(%struct.snd_card*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.snd_ctl_elem_value* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
