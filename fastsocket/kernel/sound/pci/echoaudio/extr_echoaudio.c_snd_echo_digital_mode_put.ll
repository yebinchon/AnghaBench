; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_digital_mode_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_digital_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i16* }
%struct.echoaudio = type { i16, i16*, i16, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SDM() =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_echo_digital_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_echo_digital_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.echoaudio* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.echoaudio* %11, %struct.echoaudio** %6, align 8
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i16*, i16** %15, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 0
  %18 = load i16, i16* %17, align 2
  store i16 %18, i16* %8, align 2
  %19 = load i16, i16* %8, align 2
  %20 = zext i16 %19 to i32
  %21 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %22 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = icmp sge i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %91

29:                                               ; preds = %2
  %30 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %31 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %30, i32 0, i32 1
  %32 = load i16*, i16** %31, align 8
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  %36 = load i16, i16* %35, align 2
  store i16 %36, i16* %9, align 2
  %37 = load i16, i16* %9, align 2
  %38 = zext i16 %37 to i32
  %39 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %40 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %39, i32 0, i32 2
  %41 = load i16, i16* %40, align 8
  %42 = zext i16 %41 to i32
  %43 = icmp ne i32 %38, %42
  br i1 %43, label %44, label %89

44:                                               ; preds = %29
  %45 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %46 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %45, i32 0, i32 3
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %49 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %48, i32 0, i32 6
  %50 = call i64 @atomic_read(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %85

55:                                               ; preds = %44
  %56 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %57 = load i16, i16* %9, align 2
  %58 = call i32 @set_digital_mode(%struct.echoaudio* %56, i16 zeroext %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %63 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %62, i32 0, i32 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp ne %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %68 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %71 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %72 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %71, i32 0, i32 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @snd_ctl_notify(i32 %69, i32 %70, i32* %74)
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @DE_ACT(i8* %78)
  br label %80

80:                                               ; preds = %66, %61, %55
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %52
  %86 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %87 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %86, i32 0, i32 3
  %88 = call i32 @mutex_unlock(i32* %87)
  br label %89

89:                                               ; preds = %85, %29
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %26
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.echoaudio* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @set_digital_mode(%struct.echoaudio*, i16 zeroext) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
