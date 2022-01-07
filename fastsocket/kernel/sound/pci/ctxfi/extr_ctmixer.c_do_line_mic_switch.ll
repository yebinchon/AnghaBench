; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_do_line_mic_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_do_line_mic_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ct_atc = type { i32, i32, i32 (%struct.ct_atc*)*, i32 (%struct.ct_atc*)* }

@MIXER_LINEIN_C_S = common dso_local global i32 0, align 4
@MIXER_MIC_C_S = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@kctls = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_atc*, i32)* @do_line_mic_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_line_mic_switch(%struct.ct_atc* %0, i32 %1) #0 {
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MIXER_LINEIN_C_S, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %10 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %9, i32 0, i32 3
  %11 = load i32 (%struct.ct_atc*)*, i32 (%struct.ct_atc*)** %10, align 8
  %12 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %13 = call i32 %11(%struct.ct_atc* %12)
  %14 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %15 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MIXER_MIC_C_S, align 4
  %18 = call i32 @set_switch_state(i32 %16, i32 %17, i32 0)
  %19 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %20 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kctls, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @snd_ctl_notify(i32 %21, i32 %22, i32* %26)
  br label %53

28:                                               ; preds = %2
  %29 = load i32, i32* @MIXER_MIC_C_S, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %34 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %33, i32 0, i32 2
  %35 = load i32 (%struct.ct_atc*)*, i32 (%struct.ct_atc*)** %34, align 8
  %36 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %37 = call i32 %35(%struct.ct_atc* %36)
  %38 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %39 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MIXER_LINEIN_C_S, align 4
  %42 = call i32 @set_switch_state(i32 %40, i32 %41, i32 0)
  %43 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %44 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kctls, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @snd_ctl_notify(i32 %45, i32 %46, i32* %50)
  br label %52

52:                                               ; preds = %32, %28
  br label %53

53:                                               ; preds = %52, %8
  ret void
}

declare dso_local i32 @set_switch_state(i32, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
