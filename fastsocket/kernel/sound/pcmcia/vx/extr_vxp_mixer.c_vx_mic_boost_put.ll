; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_mixer.c_vx_mic_boost_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_mixer.c_vx_mic_boost_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.vx_core = type { i32 }
%struct.snd_vxpocket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @vx_mic_boost_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_mic_boost_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.vx_core*, align 8
  %7 = alloca %struct.snd_vxpocket*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.vx_core* %10, %struct.vx_core** %6, align 8
  %11 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %12 = bitcast %struct.vx_core* %11 to %struct.snd_vxpocket*
  store %struct.snd_vxpocket* %12, %struct.snd_vxpocket** %7, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %25 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %7, align 8
  %28 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @vx_set_mic_boost(%struct.vx_core* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %7, align 8
  %38 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %40 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  store i32 1, i32* %3, align 4
  br label %46

42:                                               ; preds = %2
  %43 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %44 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %32
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vx_set_mic_boost(%struct.vx_core*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
