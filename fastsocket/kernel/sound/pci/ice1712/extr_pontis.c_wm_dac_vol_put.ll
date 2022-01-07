; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_pontis.c_wm_dac_vol_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_pontis.c_wm_dac_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16* }
%struct.snd_ice1712 = type { i32 }

@DAC_MIN = common dso_local global i16 0, align 2
@WM_DAC_ATTEN_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_dac_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_dac_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %5, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %69, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %72

19:                                               ; preds = %16
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i16*, i16** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %24, i64 %26
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %7, align 2
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load i16, i16* %7, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* @DAC_MIN, align 2
  %36 = zext i16 %35 to i32
  %37 = add nsw i32 %34, %36
  br label %39

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %37, %32 ], [ 0, %38 ]
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %7, align 2
  %43 = load i32, i32* @WM_DAC_ATTEN_L, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @wm_get(%struct.snd_ice1712* %46, i32 %47)
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %6, align 2
  %51 = load i16, i16* %6, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* %7, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %39
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i16, i16* %7, align 2
  %60 = call i32 @wm_put(%struct.snd_ice1712* %57, i32 %58, i16 zeroext %59)
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i16, i16* %7, align 2
  %64 = zext i16 %63 to i32
  %65 = or i32 %64, 256
  %66 = trunc i32 %65 to i16
  %67 = call i32 @wm_put_nocache(%struct.snd_ice1712* %61, i32 %62, i16 zeroext %66)
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %56, %39
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %74 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @wm_put_nocache(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
