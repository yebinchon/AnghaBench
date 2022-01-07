; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_put_enum_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_put_enum_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_codec = type { i32 }
%struct.soc_enum = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_put_enum_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.soc_enum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.soc_enum*
  store %struct.soc_enum* %16, %struct.soc_enum** %7, align 8
  store i32 1, i32* %10, align 4
  br label %17

17:                                               ; preds = %24, %2
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %20 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %17

27:                                               ; preds = %17
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %36 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %37, 1
  %39 = icmp ugt i32 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %114

43:                                               ; preds = %27
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %52 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %50, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub i32 %55, 1
  %57 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %58 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %56, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %62 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %65 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %43
  %69 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %70 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %77 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub i32 %78, 1
  %80 = icmp ugt i32 %75, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %114

84:                                               ; preds = %68
  %85 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %86 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %93 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %91, %94
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub i32 %98, 1
  %100 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %101 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %99, %102
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %84, %43
  %107 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %108 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %109 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %107, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %106, %81, %40
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
