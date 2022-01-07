; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_pcm_vol_control_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_pcm_vol_control_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_trident = type { i64, i32, %struct.snd_trident_pcm_mixer* }
%struct.snd_trident_pcm_mixer = type { i32, i32* }

@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_trident_pcm_vol_control_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_pcm_vol_control_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_trident*, align 8
  %6 = alloca %struct.snd_trident_pcm_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_trident* %10, %struct.snd_trident** %5, align 8
  %11 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %12 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %11, i32 0, i32 2
  %13 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %12, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 1
  %17 = call i64 @snd_ctl_get_ioffnum(%struct.snd_kcontrol* %14, i32* %16)
  %18 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %13, i64 %17
  store %struct.snd_trident_pcm_mixer* %18, %struct.snd_trident_pcm_mixer** %6, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %20 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1023
  %33 = sub nsw i32 1023, %32
  store i32 %33, i32* %7, align 4
  br label %45

34:                                               ; preds = %2
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = sub nsw i32 255, %42
  %44 = shl i32 %43, 2
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %34, %24
  %46 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %47 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %46, i32 0, i32 1
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %6, align 8
  %51 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %49, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %6, align 8
  %57 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %6, align 8
  %59 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %45
  %63 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %64 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %6, align 8
  %65 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @snd_trident_write_vol_reg(%struct.snd_trident* %63, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %45
  %70 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %71 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @snd_ctl_get_ioffnum(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_trident_write_vol_reg(%struct.snd_trident*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
