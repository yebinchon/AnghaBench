; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_class_w_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_class_w_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dapm_widget = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.wm8993_priv* }
%struct.wm8993_priv = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Disabling Class W\0A\00", align 1
@WM8993_CLASS_W_0 = common dso_local global i32 0, align 4
@WM8993_CP_DYN_FREQ = common dso_local global i32 0, align 4
@WM8993_CP_DYN_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Enabling Class W\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Indirect DAC use count now %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @class_w_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @class_w_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.wm8993_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_soc_dapm_widget* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_dapm_widget* %10, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  store %struct.snd_soc_codec* %13, %struct.snd_soc_codec** %6, align 8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 1
  %16 = load %struct.wm8993_priv*, %struct.wm8993_priv** %15, align 8
  store %struct.wm8993_priv* %16, %struct.wm8993_priv** %7, align 8
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %2
  %26 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %27 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %32 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %36 = load i32, i32* @WM8993_CLASS_W_0, align 4
  %37 = load i32, i32* @WM8993_CP_DYN_FREQ, align 4
  %38 = load i32, i32* @WM8993_CP_DYN_V, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %35, i32 %36, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %30, %25
  %42 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %43 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %2
  %47 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %49 = call i32 @snd_soc_dapm_put_enum_double(%struct.snd_kcontrol* %47, %struct.snd_ctl_elem_value* %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %82

58:                                               ; preds = %46
  %59 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %60 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %65 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %69 = load i32, i32* @WM8993_CLASS_W_0, align 4
  %70 = load i32, i32* @WM8993_CP_DYN_FREQ, align 4
  %71 = load i32, i32* @WM8993_CP_DYN_V, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @WM8993_CP_DYN_FREQ, align 4
  %74 = load i32, i32* @WM8993_CP_DYN_V, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %68, i32 %69, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %63, %58
  %78 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %79 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %46
  %83 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %84 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %87 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local %struct.snd_soc_dapm_widget* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_put_enum_double(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
