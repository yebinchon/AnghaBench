; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_free1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_free1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss = type { %struct.snd_mixer_oss_slot*, %struct.snd_card* }
%struct.snd_mixer_oss_slot = type { i32 (%struct.snd_mixer_oss_slot*)* }
%struct.snd_card = type { i32 }
%struct.TYPE_2__ = type { %struct.snd_mixer_oss* }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_OSS_MAX_MIXERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @snd_mixer_oss_free1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_free1(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snd_mixer_oss*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_mixer_oss_slot*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.snd_mixer_oss*
  store %struct.snd_mixer_oss* %9, %struct.snd_mixer_oss** %4, align 8
  %10 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %11 = icmp ne %struct.snd_mixer_oss* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %15 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %14, i32 0, i32 1
  %16 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  store %struct.snd_card* %16, %struct.snd_card** %5, align 8
  %17 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %18 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %19 = call %struct.TYPE_2__* @card_oss(%struct.snd_card* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %20, align 8
  %22 = icmp ne %struct.snd_mixer_oss* %17, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @snd_BUG_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %61

29:                                               ; preds = %13
  %30 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %31 = call %struct.TYPE_2__* @card_oss(%struct.snd_card* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.snd_mixer_oss* null, %struct.snd_mixer_oss** %32, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %55, %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SNDRV_OSS_MAX_MIXERS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %39 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %38, i32 0, i32 0
  %40 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %40, i64 %42
  store %struct.snd_mixer_oss_slot* %43, %struct.snd_mixer_oss_slot** %7, align 8
  %44 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %45 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %44, i32 0, i32 0
  %46 = load i32 (%struct.snd_mixer_oss_slot*)*, i32 (%struct.snd_mixer_oss_slot*)** %45, align 8
  %47 = icmp ne i32 (%struct.snd_mixer_oss_slot*)* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %50 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %49, i32 0, i32 0
  %51 = load i32 (%struct.snd_mixer_oss_slot*)*, i32 (%struct.snd_mixer_oss_slot*)** %50, align 8
  %52 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %53 = call i32 %51(%struct.snd_mixer_oss_slot* %52)
  br label %54

54:                                               ; preds = %48, %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %60 = call i32 @kfree(%struct.snd_mixer_oss* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %26, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @card_oss(%struct.snd_card*) #1

declare dso_local i32 @kfree(%struct.snd_mixer_oss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
