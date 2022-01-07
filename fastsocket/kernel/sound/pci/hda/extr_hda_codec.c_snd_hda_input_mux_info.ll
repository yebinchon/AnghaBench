; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_input_mux_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_input_mux_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_input_mux = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_input_mux_info(%struct.hda_input_mux* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_input_mux*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_input_mux* %0, %struct.hda_input_mux** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %7 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %8 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %13 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %20 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  %25 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %32 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp uge i32 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %37 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %24
  %41 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %47 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcpy(i32 %45, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %40, %23
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
