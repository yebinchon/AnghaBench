; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_class_w_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_class_w_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_dapm_widget = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.i2c_client*, %struct.wm8903_priv* }
%struct.i2c_client = type { i32 }
%struct.wm8903_priv = type { i32 }

@WM8903_CLASS_W_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Disabling Class W\0A\00", align 1
@WM8903_CP_DYN_FREQ = common dso_local global i32 0, align 4
@WM8903_CP_DYN_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Enabling Class W\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Bypass use count now %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8903_class_w_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_class_w_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.wm8903_priv*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_soc_dapm_widget* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_dapm_widget* %12, %struct.snd_soc_dapm_widget** %5, align 8
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %14, align 8
  store %struct.snd_soc_codec* %15, %struct.snd_soc_codec** %6, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %16, i32 0, i32 1
  %18 = load %struct.wm8903_priv*, %struct.wm8903_priv** %17, align 8
  store %struct.wm8903_priv* %18, %struct.wm8903_priv** %7, align 8
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %19, i32 0, i32 0
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %8, align 8
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %23 = load i32, i32* @WM8903_CLASS_W_0, align 4
  %24 = call i32 @snd_soc_read(%struct.snd_soc_codec* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %2
  %34 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %35 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %43 = load i32, i32* @WM8903_CLASS_W_0, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @WM8903_CP_DYN_FREQ, align 4
  %46 = load i32, i32* @WM8903_CP_DYN_V, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = call i32 @snd_soc_write(%struct.snd_soc_codec* %42, i32 %43, i32 %49)
  br label %51

51:                                               ; preds = %38, %33
  %52 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %53 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %2
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %59 = call i32 @snd_soc_dapm_put_volsw(%struct.snd_kcontrol* %57, %struct.snd_ctl_elem_value* %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %61 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %56
  %69 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %70 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %78 = load i32, i32* @WM8903_CLASS_W_0, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @WM8903_CP_DYN_FREQ, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @WM8903_CP_DYN_V, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @snd_soc_write(%struct.snd_soc_codec* %77, i32 %78, i32 %83)
  br label %85

85:                                               ; preds = %73, %68
  %86 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %87 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %85, %56
  %91 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %94 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %10, align 4
  ret i32 %97
}

declare dso_local %struct.snd_soc_dapm_widget* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
