; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_field_set_from_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_field_set_from_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, %struct.oxygen* }
%struct.oxygen = type { %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }

@WM8776_ALCCTRL1 = common dso_local global i64 0, align 8
@WM8776_LCSEL_MASK = common dso_local global i32 0, align 4
@WM8776_LCSEL_LIMITER = common dso_local global i32 0, align 4
@LC_CONTROL_LIMITER = common dso_local global i32 0, align 4
@LC_CONTROL_ALC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_kcontrol*)* @wm8776_field_set_from_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8776_field_set_from_ctl(%struct.snd_kcontrol* %0) #0 {
  %2 = alloca %struct.snd_kcontrol*, align 8
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.xonar_wm87x6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %2, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 1
  %16 = load %struct.oxygen*, %struct.oxygen** %15, align 8
  store %struct.oxygen* %16, %struct.oxygen** %3, align 8
  %17 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %18 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %17, i32 0, i32 0
  %19 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %18, align 8
  store %struct.xonar_wm87x6* %19, %struct.xonar_wm87x6** %4, align 8
  %20 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %4, align 8
  %21 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @WM8776_ALCCTRL1, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WM8776_LCSEL_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @WM8776_LCSEL_LIMITER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @LC_CONTROL_LIMITER, align 4
  store i32 %31, i32* %7, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @LC_CONTROL_ALC, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %108

42:                                               ; preds = %34
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 15
  store i32 %46, i32* %5, align 4
  %47 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %48 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = lshr i32 %49, 8
  %51 = and i32 %50, 15
  store i32 %51, i32* %8, align 4
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %53 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = lshr i32 %54, 12
  %56 = and i32 %55, 15
  store i32 %56, i32* %9, align 4
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %58 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 15
  store i32 %61, i32* %11, align 4
  %62 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %63 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = lshr i32 %64, 20
  %66 = and i32 %65, 15
  store i32 %66, i32* %10, align 4
  %67 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %68 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = lshr i32 %69, 24
  %71 = and i32 %70, 31
  store i32 %71, i32* %6, align 4
  %72 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %73 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = lshr i32 %74, 29
  %76 = and i32 %75, 1
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %42
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub i32 %81, %82
  %84 = sub i32 %80, %83
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %42
  %86 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %4, align 8
  %87 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = shl i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  %104 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @wm8776_write_cached(%struct.oxygen* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %85, %41
  ret void
}

declare dso_local i32 @wm8776_write_cached(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
