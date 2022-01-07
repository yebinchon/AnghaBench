; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas_snd_bass_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas_snd_bass_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.tas = type { i64, i32, i64 }

@TAS3004_BASS_MIN = common dso_local global i64 0, align 8
@TAS3004_BASS_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tas_snd_bass_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas_snd_bass_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.tas*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %8 = call %struct.tas* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.tas* %8, %struct.tas** %6, align 8
  %9 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TAS3004_BASS_MIN, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TAS3004_BASS_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %71

31:                                               ; preds = %18
  %32 = load %struct.tas*, %struct.tas** %6, align 8
  %33 = getelementptr inbounds %struct.tas, %struct.tas* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.tas*, %struct.tas** %6, align 8
  %36 = getelementptr inbounds %struct.tas, %struct.tas* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %37, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load %struct.tas*, %struct.tas** %6, align 8
  %48 = getelementptr inbounds %struct.tas, %struct.tas* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  store i32 0, i32* %3, align 4
  br label %71

50:                                               ; preds = %31
  %51 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tas*, %struct.tas** %6, align 8
  %59 = getelementptr inbounds %struct.tas, %struct.tas* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.tas*, %struct.tas** %6, align 8
  %61 = getelementptr inbounds %struct.tas, %struct.tas* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load %struct.tas*, %struct.tas** %6, align 8
  %66 = call i32 @tas_set_bass(%struct.tas* %65)
  br label %67

67:                                               ; preds = %64, %50
  %68 = load %struct.tas*, %struct.tas** %6, align 8
  %69 = getelementptr inbounds %struct.tas, %struct.tas* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %46, %28
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.tas* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tas_set_bass(%struct.tas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
