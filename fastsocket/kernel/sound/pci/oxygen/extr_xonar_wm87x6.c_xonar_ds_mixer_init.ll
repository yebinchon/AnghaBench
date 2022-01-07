; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_ds_mixer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_ds_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { %struct.snd_kcontrol*, %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ds_controls = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Line Capture Switch\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mic Capture Switch\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*)* @xonar_ds_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xonar_ds_mixer_init(%struct.oxygen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.xonar_wm87x6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 1
  %10 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %9, align 8
  store %struct.xonar_wm87x6* %10, %struct.xonar_wm87x6** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %62, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** @ds_controls, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %11
  %17 = load i32*, i32** @ds_controls, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %22 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %20, %struct.oxygen* %21)
  store %struct.snd_kcontrol* %22, %struct.snd_kcontrol** %6, align 8
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %24 = icmp ne %struct.snd_kcontrol* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %81

28:                                               ; preds = %16
  %29 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %30 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %33 = call i32 @snd_ctl_add(i32 %31, %struct.snd_kcontrol* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %81

38:                                               ; preds = %28
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strcmp(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %47 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %4, align 8
  %48 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %47, i32 0, i32 1
  store %struct.snd_kcontrol* %46, %struct.snd_kcontrol** %48, align 8
  br label %61

49:                                               ; preds = %38
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %51 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcmp(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %58 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %4, align 8
  %59 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %58, i32 0, i32 0
  store %struct.snd_kcontrol* %57, %struct.snd_kcontrol** %59, align 8
  br label %60

60:                                               ; preds = %56, %49
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %11

65:                                               ; preds = %11
  %66 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %4, align 8
  %67 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %66, i32 0, i32 1
  %68 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %67, align 8
  %69 = icmp ne %struct.snd_kcontrol* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %4, align 8
  %72 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %71, i32 0, i32 0
  %73 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %72, align 8
  %74 = icmp ne %struct.snd_kcontrol* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* @ENXIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %81

78:                                               ; preds = %70
  %79 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %80 = call i32 @add_lc_controls(%struct.oxygen* %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %75, %36, %25
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.oxygen*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @add_lc_controls(%struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
