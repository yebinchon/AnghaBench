; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas_switch_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas_switch_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codec_info_item = type { %struct.tas* }
%struct.tas = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.codec_info_item*, i32)* @tas_switch_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas_switch_clock(%struct.codec_info_item* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.codec_info_item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tas*, align 8
  store %struct.codec_info_item* %0, %struct.codec_info_item** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.codec_info_item*, %struct.codec_info_item** %4, align 8
  %8 = getelementptr inbounds %struct.codec_info_item, %struct.codec_info_item* %7, i32 0, i32 0
  %9 = load %struct.tas*, %struct.tas** %8, align 8
  store %struct.tas* %9, %struct.tas** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %55 [
    i32 129, label %11
    i32 128, label %27
  ]

11:                                               ; preds = %2
  %12 = load %struct.tas*, %struct.tas** %6, align 8
  %13 = getelementptr inbounds %struct.tas, %struct.tas* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %18, align 8
  %20 = load %struct.tas*, %struct.tas** %6, align 8
  %21 = getelementptr inbounds %struct.tas, %struct.tas* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 %19(%struct.TYPE_7__* %23)
  %25 = load %struct.tas*, %struct.tas** %6, align 8
  %26 = getelementptr inbounds %struct.tas, %struct.tas* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %58

27:                                               ; preds = %2
  %28 = load %struct.tas*, %struct.tas** %6, align 8
  %29 = getelementptr inbounds %struct.tas, %struct.tas* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.tas*, %struct.tas** %6, align 8
  %32 = call i32 @tas_reset_init(%struct.tas* %31)
  %33 = load %struct.tas*, %struct.tas** %6, align 8
  %34 = call i32 @tas_set_volume(%struct.tas* %33)
  %35 = load %struct.tas*, %struct.tas** %6, align 8
  %36 = call i32 @tas_set_mixer(%struct.tas* %35)
  %37 = load %struct.tas*, %struct.tas** %6, align 8
  %38 = getelementptr inbounds %struct.tas, %struct.tas* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.tas*, %struct.tas** %6, align 8
  %40 = getelementptr inbounds %struct.tas, %struct.tas* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %45, align 8
  %47 = load %struct.tas*, %struct.tas** %6, align 8
  %48 = getelementptr inbounds %struct.tas, %struct.tas* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 %46(%struct.TYPE_7__* %50)
  %52 = load %struct.tas*, %struct.tas** %6, align 8
  %53 = getelementptr inbounds %struct.tas, %struct.tas* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %58

55:                                               ; preds = %2
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %27, %11
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tas_reset_init(%struct.tas*) #1

declare dso_local i32 @tas_set_volume(%struct.tas*) #1

declare dso_local i32 @tas_set_mixer(%struct.tas*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
