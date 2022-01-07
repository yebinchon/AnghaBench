; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_ch_mode_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_ch_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ch_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hda_codec* %11, %struct.hda_codec** %6, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %7, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %27 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %96

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %36 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %39 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %37, %40
  %42 = sdiv i32 %41, 2
  %43 = icmp eq i32 %34, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %96

45:                                               ; preds = %33
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, 2
  %48 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %49 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %47, %50
  %52 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %53 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %68, %45
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %57 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @set_multi_io(%struct.hda_codec* %61, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %54

71:                                               ; preds = %54
  %72 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %73 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %76 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @max(i32 %74, i32 %77)
  %79 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %80 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %83 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %71
  %87 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %88 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %90, 2
  %92 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %93 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %86, %71
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %44, %30
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @set_multi_io(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
