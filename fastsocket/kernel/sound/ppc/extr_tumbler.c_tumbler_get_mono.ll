; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_tumbler_get_mono.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_tumbler_get_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.tumbler_mono_vol = type { i64 }
%struct.snd_pmac = type { %struct.pmac_tumbler* }
%struct.pmac_tumbler = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tumbler_get_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tumbler_get_mono(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.tumbler_mono_vol*, align 8
  %7 = alloca %struct.snd_pmac*, align 8
  %8 = alloca %struct.pmac_tumbler*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.tumbler_mono_vol*
  store %struct.tumbler_mono_vol* %12, %struct.tumbler_mono_vol** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_pmac* %14, %struct.snd_pmac** %7, align 8
  %15 = load %struct.snd_pmac*, %struct.snd_pmac** %7, align 8
  %16 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %15, i32 0, i32 0
  %17 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %16, align 8
  store %struct.pmac_tumbler* %17, %struct.pmac_tumbler** %8, align 8
  %18 = icmp ne %struct.pmac_tumbler* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %8, align 8
  %24 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.tumbler_mono_vol*, %struct.tumbler_mono_vol** %6, align 8
  %27 = getelementptr inbounds %struct.tumbler_mono_vol, %struct.tumbler_mono_vol* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %30, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %22, %19
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
