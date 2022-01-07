; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_pcm_pan_control_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_pcm_pan_control_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_trident = type { i32, %struct.snd_trident_pcm_mixer* }
%struct.snd_trident_pcm_mixer = type { i8, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_trident_pcm_pan_control_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_pcm_pan_control_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_trident*, align 8
  %6 = alloca %struct.snd_trident_pcm_mixer*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_trident* %10, %struct.snd_trident** %5, align 8
  %11 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %12 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %11, i32 0, i32 1
  %13 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %12, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 1
  %17 = call i64 @snd_ctl_get_ioffnum(%struct.snd_kcontrol* %14, i32* %16)
  %18 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %13, i64 %17
  store %struct.snd_trident_pcm_mixer* %18, %struct.snd_trident_pcm_mixer** %6, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 64
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 63
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %7, align 1
  br label %50

38:                                               ; preds = %2
  %39 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 63
  %47 = sub nsw i32 63, %46
  %48 = or i32 %47, 64
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %7, align 1
  br label %50

50:                                               ; preds = %38, %28
  %51 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %52 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_irq(i32* %52)
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  %56 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %6, align 8
  %57 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %56, i32 0, i32 0
  %58 = load i8, i8* %57, align 8
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %55, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i8, i8* %7, align 1
  %63 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %6, align 8
  %64 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %63, i32 0, i32 0
  store i8 %62, i8* %64, align 8
  %65 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %6, align 8
  %66 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %50
  %70 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %71 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %6, align 8
  %72 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i8, i8* %7, align 1
  %75 = call i32 @snd_trident_write_pan_reg(%struct.snd_trident* %70, i32* %73, i8 zeroext %74)
  br label %76

76:                                               ; preds = %69, %50
  %77 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %78 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_irq(i32* %78)
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local %struct.snd_trident* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @snd_ctl_get_ioffnum(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_trident_write_pan_reg(%struct.snd_trident*, i32*, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
