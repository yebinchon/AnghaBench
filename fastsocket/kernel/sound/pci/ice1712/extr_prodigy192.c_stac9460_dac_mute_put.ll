; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy192.c_stac9460_dac_mute_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy192.c_stac9460_dac_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { %struct.prodigy192_spec* }
%struct.prodigy192_spec = type { i32 }

@STAC946X_MASTER_VOLUME = common dso_local global i32 0, align 4
@STAC946X_LF_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @stac9460_dac_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9460_dac_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca %struct.prodigy192_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_ice1712* %10, %struct.snd_ice1712** %5, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %12, align 8
  store %struct.prodigy192_spec* %13, %struct.prodigy192_spec** %6, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @STAC946X_MASTER_VOLUME, align 4
  store i32 %19, i32* %7, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 1
  %24 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %21, i32* %23)
  %25 = load i32, i32* @STAC946X_LF_VOLUME, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %20, %18
  %28 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %6, align 8
  %29 = getelementptr inbounds %struct.prodigy192_spec, %struct.prodigy192_spec* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @stac9460_dac_mute(%struct.snd_ice1712* %31, i32 %32, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %6, align 8
  %42 = getelementptr inbounds %struct.prodigy192_spec, %struct.prodigy192_spec* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stac9460_dac_mute(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
