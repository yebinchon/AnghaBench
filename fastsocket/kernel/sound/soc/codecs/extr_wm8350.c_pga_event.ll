; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_pga_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_pga_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.wm8350_data* }
%struct.wm8350_data = type { %struct.wm8350_output, %struct.wm8350_output }
%struct.wm8350_output = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }

@WM8350_RAMP_UP = common dso_local global i32 0, align 4
@WM8350_RAMP_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @pga_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pga_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_codec*, align 8
  %9 = alloca %struct.wm8350_data*, align 8
  %10 = alloca %struct.wm8350_output*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  store %struct.snd_soc_codec* %13, %struct.snd_soc_codec** %8, align 8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 1
  %16 = load %struct.wm8350_data*, %struct.wm8350_data** %15, align 8
  store %struct.wm8350_data* %16, %struct.wm8350_data** %9, align 8
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %26 [
    i32 0, label %20
    i32 1, label %20
    i32 2, label %23
    i32 3, label %23
  ]

20:                                               ; preds = %3, %3
  %21 = load %struct.wm8350_data*, %struct.wm8350_data** %9, align 8
  %22 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %21, i32 0, i32 1
  store %struct.wm8350_output* %22, %struct.wm8350_output** %10, align 8
  br label %28

23:                                               ; preds = %3, %3
  %24 = load %struct.wm8350_data*, %struct.wm8350_data** %9, align 8
  %25 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %24, i32 0, i32 0
  store %struct.wm8350_output* %25, %struct.wm8350_output** %10, align 8
  br label %28

26:                                               ; preds = %3
  %27 = call i32 (...) @BUG()
  store i32 -1, i32* %4, align 4
  br label %63

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %62 [
    i32 129, label %30
    i32 128, label %46
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @WM8350_RAMP_UP, align 4
  %32 = load %struct.wm8350_output*, %struct.wm8350_output** %10, align 8
  %33 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.wm8350_output*, %struct.wm8350_output** %10, align 8
  %35 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 0
  %38 = call i32 @delayed_work_pending(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %42 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %41, i32 0, i32 0
  %43 = call i32 @msecs_to_jiffies(i32 1)
  %44 = call i32 @schedule_delayed_work(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %30
  br label %62

46:                                               ; preds = %28
  %47 = load i32, i32* @WM8350_RAMP_DOWN, align 4
  %48 = load %struct.wm8350_output*, %struct.wm8350_output** %10, align 8
  %49 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wm8350_output*, %struct.wm8350_output** %10, align 8
  %51 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %53 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %52, i32 0, i32 0
  %54 = call i32 @delayed_work_pending(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %46
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %58 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %57, i32 0, i32 0
  %59 = call i32 @msecs_to_jiffies(i32 1)
  %60 = call i32 @schedule_delayed_work(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %46
  br label %62

62:                                               ; preds = %28, %61, %45
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @delayed_work_pending(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
