; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_put_value_enum_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_put_value_enum_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_codec = type { i32 }
%struct.soc_enum = type { i32, i32*, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_put_value_enum_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.soc_enum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %6, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.soc_enum*
  store %struct.soc_enum* %15, %struct.soc_enum** %7, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %24 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = icmp sgt i32 %22, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %116

31:                                               ; preds = %2
  %32 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %33 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %34, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %46 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %44, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %50 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %53 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %51, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %57 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %60 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %108

63:                                               ; preds = %31
  %64 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %72 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = icmp sgt i32 %70, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %116

79:                                               ; preds = %63
  %80 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %81 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %84 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %82, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %94 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 %92, %95
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %100 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %103 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 %101, %104
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %79, %31
  %109 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %110 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %111 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %109, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %108, %76, %28
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
