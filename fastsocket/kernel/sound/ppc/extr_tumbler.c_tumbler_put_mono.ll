; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_tumbler_put_mono.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_tumbler_put_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.tumbler_mono_vol = type { i32, i64 }
%struct.snd_pmac = type { %struct.pmac_tumbler* }
%struct.pmac_tumbler = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tumbler_put_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tumbler_put_mono(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.tumbler_mono_vol*, align 8
  %7 = alloca %struct.snd_pmac*, align 8
  %8 = alloca %struct.pmac_tumbler*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.tumbler_mono_vol*
  store %struct.tumbler_mono_vol* %14, %struct.tumbler_mono_vol** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %15)
  store %struct.snd_pmac* %16, %struct.snd_pmac** %7, align 8
  %17 = load %struct.snd_pmac*, %struct.snd_pmac** %7, align 8
  %18 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %17, i32 0, i32 0
  %19 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %18, align 8
  store %struct.pmac_tumbler* %19, %struct.pmac_tumbler** %8, align 8
  %20 = icmp ne %struct.pmac_tumbler* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.tumbler_mono_vol*, %struct.tumbler_mono_vol** %6, align 8
  %34 = getelementptr inbounds %struct.tumbler_mono_vol, %struct.tumbler_mono_vol* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp uge i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %68

40:                                               ; preds = %24
  %41 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %8, align 8
  %42 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.tumbler_mono_vol*, %struct.tumbler_mono_vol** %6, align 8
  %45 = getelementptr inbounds %struct.tumbler_mono_vol, %struct.tumbler_mono_vol* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %8, align 8
  %57 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.tumbler_mono_vol*, %struct.tumbler_mono_vol** %6, align 8
  %60 = getelementptr inbounds %struct.tumbler_mono_vol, %struct.tumbler_mono_vol* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %55, i32* %62, align 4
  %63 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %8, align 8
  %64 = load %struct.tumbler_mono_vol*, %struct.tumbler_mono_vol** %6, align 8
  %65 = call i32 @tumbler_set_mono_volume(%struct.pmac_tumbler* %63, %struct.tumbler_mono_vol* %64)
  br label %66

66:                                               ; preds = %54, %40
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %37, %21
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @tumbler_set_mono_volume(%struct.pmac_tumbler*, %struct.tumbler_mono_vol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
