; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_wtm.c_stac9460_mic_sw_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_wtm.c_stac9460_mic_sw_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { i32 }

@STAC946X_GENERAL_PURPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @stac9460_mic_sw_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9460_mic_sw_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 1
  %15 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %12, i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %20 = load i32, i32* @STAC946X_GENERAL_PURPOSE, align 4
  %21 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %19, i32 %20)
  store i8 %21, i8* %7, align 1
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %24 = load i32, i32* @STAC946X_GENERAL_PURPOSE, align 4
  %25 = call zeroext i8 @stac9460_2_get(%struct.snd_ice1712* %23, i32 %24)
  store i8 %25, i8* %7, align 1
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = shl i32 %34, 7
  %36 = and i32 %35, 128
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, -129
  %40 = or i32 %36, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %6, align 1
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %26
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %55 = load i32, i32* @STAC946X_GENERAL_PURPOSE, align 4
  %56 = load i8, i8* %6, align 1
  %57 = call i32 @stac9460_put(%struct.snd_ice1712* %54, i32 %55, i8 zeroext %56)
  br label %63

58:                                               ; preds = %50
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %60 = load i32, i32* @STAC946X_GENERAL_PURPOSE, align 4
  %61 = load i8, i8* %6, align 1
  %62 = call i32 @stac9460_2_put(%struct.snd_ice1712* %59, i32 %60, i8 zeroext %61)
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %26
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local zeroext i8 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local zeroext i8 @stac9460_2_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @stac9460_2_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
