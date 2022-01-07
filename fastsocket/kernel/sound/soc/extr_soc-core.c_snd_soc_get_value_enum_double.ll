; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_get_value_enum_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_get_value_enum_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_codec = type { i32 }
%struct.soc_enum = type { i32, i32, i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_get_value_enum_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.soc_enum*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.soc_enum*
  store %struct.soc_enum* %15, %struct.soc_enum** %6, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %17 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %18 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_soc_read(%struct.snd_soc_codec* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %23 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = lshr i32 %21, %24
  %26 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %27 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %48, %2
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %33 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %39 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %30

51:                                               ; preds = %46, %30
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %52, i32* %58, align 4
  %59 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %60 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %63 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %51
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %69 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = lshr i32 %67, %70
  %72 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %73 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %71, %74
  store i32 %75, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %94, %66
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %79 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %85 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %83, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %97

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %76

97:                                               ; preds = %92, %76
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %100 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %97, %51
  ret i32 0
}

declare dso_local %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
