; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy192.c_stac9460_dac_vol_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy192.c_stac9460_dac_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.snd_ice1712 = type { i32 }

@STAC946X_MASTER_VOLUME = common dso_local global i32 0, align 4
@STAC946X_LF_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @stac9460_dac_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9460_dac_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @STAC946X_MASTER_VOLUME, align 4
  store i32 %18, i32* %6, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 1
  %23 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %20, i32* %22)
  %24 = load i32, i32* @STAC946X_LF_VOLUME, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %19, %17
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %9, align 1
  %34 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %34, i32 %35)
  store i8 %36, i8* %7, align 1
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 127
  %40 = sub nsw i32 127, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %8, align 1
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %9, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %26
  %51 = load i8, i8* %9, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 127, %52
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 128
  %57 = or i32 %53, %56
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %8, align 1
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = sub nsw i32 127, %62
  %64 = load i8, i8* %7, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 128
  %67 = or i32 %63, %66
  %68 = call i32 @stac9460_put(%struct.snd_ice1712* %59, i32 %60, i32 %67)
  br label %69

69:                                               ; preds = %50, %26
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local zeroext i8 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
