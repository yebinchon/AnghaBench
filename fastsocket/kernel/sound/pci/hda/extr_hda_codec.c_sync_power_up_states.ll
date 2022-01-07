; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_sync_power_up_states.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_sync_power_up_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 (%struct.hda_codec*, i32, i32)*, i32, i32 }

@AC_WCAP_POWER = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @sync_power_up_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_power_up_states(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load i32 (%struct.hda_codec*, i32, i32)*, i32 (%struct.hda_codec*, i32, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.hda_codec*, i32, i32)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %61

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %56, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @get_wcaps(%struct.hda_codec* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @AC_WCAP_POWER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %56

31:                                               ; preds = %22
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 0
  %34 = load i32 (%struct.hda_codec*, i32, i32)*, i32 (%struct.hda_codec*, i32, i32)** %33, align 8
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @AC_PWRST_D0, align 4
  %38 = call i32 %34(%struct.hda_codec* %35, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @AC_PWRST_D0, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %56

43:                                               ; preds = %31
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @snd_hda_check_power_state(%struct.hda_codec* %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @snd_hda_codec_write(%struct.hda_codec* %50, i32 %51, i32 0, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55, %42, %30
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %16

61:                                               ; preds = %14, %16
  ret void
}

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_check_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
