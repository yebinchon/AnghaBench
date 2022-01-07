; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_add_mic_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_add_mic_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i64, i32 }
%struct.snd_vx222 = type { i64, i64* }

@VX_TYPE_MIC = common dso_local global i64 0, align 8
@vx_control_input_level = common dso_local global i32 0, align 4
@vx_control_mic_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*)* @vx2_add_mic_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx2_add_mic_controls(%struct.vx_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca %struct.snd_vx222*, align 8
  %5 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = bitcast %struct.vx_core* %6 to %struct.snd_vx222*
  store %struct.snd_vx222* %7, %struct.snd_vx222** %4, align 8
  %8 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %9 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VX_TYPE_MIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %16 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %20 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %24 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %26 = call i32 @vx2_set_input_level(%struct.snd_vx222* %25)
  %27 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %28 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %31 = call i32 @snd_ctl_new1(i32* @vx_control_input_level, %struct.snd_vx222* %30)
  %32 = call i32 @snd_ctl_add(i32 %29, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %14
  %37 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %38 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %41 = call i32 @snd_ctl_new1(i32* @vx_control_mic_level, %struct.snd_vx222* %40)
  %42 = call i32 @snd_ctl_add(i32 %39, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %44, %34, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @vx2_set_input_level(%struct.snd_vx222*) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_vx222*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
