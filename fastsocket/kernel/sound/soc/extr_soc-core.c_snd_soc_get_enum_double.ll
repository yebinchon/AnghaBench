; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_get_enum_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_get_enum_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_codec = type { i32 }
%struct.soc_enum = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_get_enum_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.soc_enum*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_codec* %10, %struct.snd_soc_codec** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.soc_enum*
  store %struct.soc_enum* %14, %struct.soc_enum** %6, align 8
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %22, %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %18 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %27 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %28 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snd_soc_read(%struct.snd_soc_codec* %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %33 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = lshr i32 %31, %34
  %36 = load i32, i32* %8, align 4
  %37 = sub i32 %36, 1
  %38 = and i32 %35, %37
  %39 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %38, i32* %44, align 4
  %45 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %46 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %49 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %25
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %55 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = lshr i32 %53, %56
  %58 = load i32, i32* %8, align 4
  %59 = sub i32 %58, 1
  %60 = and i32 %57, %59
  %61 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %62 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %52, %25
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
