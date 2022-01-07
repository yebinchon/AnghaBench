; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_snd_soc_dapm_get_value_enum_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_snd_soc_dapm_get_value_enum_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.soc_enum = type { i32, i32, i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_get_value_enum_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.soc_enum*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_soc_dapm_widget* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_dapm_widget* %11, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.soc_enum*
  store %struct.soc_enum* %15, %struct.soc_enum** %6, align 8
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %20 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_soc_read(i32 %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %25 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = lshr i32 %23, %26
  %28 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %29 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %50, %2
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %35 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %41 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %39, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %32

53:                                               ; preds = %48, %32
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %54, i32* %60, align 4
  %61 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %62 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %65 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %107

68:                                               ; preds = %53
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %71 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = lshr i32 %69, %72
  %74 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %75 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %73, %76
  store i32 %77, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %96, %68
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %81 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %87 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %85, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %99

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %78

99:                                               ; preds = %94, %78
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %102 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %99, %53
  ret i32 0
}

declare dso_local %struct.snd_soc_dapm_widget* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
