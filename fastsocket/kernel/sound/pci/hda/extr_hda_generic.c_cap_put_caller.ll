; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_cap_put_caller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_cap_put_caller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.hda_codec = type { i32, i32, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)*, %struct.hda_input_mux }
%struct.hda_codec.0 = type opaque
%struct.hda_input_mux = type { i32 }
%struct.nid_path = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32)* @cap_put_caller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_put_caller(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_ctl_elem_value*, align 8
  %7 = alloca i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_codec*, align 8
  %10 = alloca %struct.hda_gen_spec*, align 8
  %11 = alloca %struct.hda_input_mux*, align 8
  %12 = alloca %struct.nid_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %5, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %6, align 8
  store i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* %2, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %17 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %16)
  store %struct.hda_codec* %17, %struct.hda_codec** %9, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 2
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %19, align 8
  store %struct.hda_gen_spec* %20, %struct.hda_gen_spec** %10, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %22 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %21, i32 0, i32 1
  store %struct.hda_input_mux* %22, %struct.hda_input_mux** %11, align 8
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %31 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %73, %4
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.hda_input_mux*, %struct.hda_input_mux** %11, align 8
  %35 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %32
  %39 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call %struct.nid_path* @get_input_path(%struct.hda_codec* %39, i32 %40, i32 %41)
  store %struct.nid_path* %42, %struct.nid_path** %12, align 8
  %43 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %44 = icmp ne %struct.nid_path* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %47 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45, %38
  br label %73

55:                                               ; preds = %45
  %56 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %57 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %64 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %7, align 8
  %66 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %67 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %68 = call i32 %65(%struct.snd_kcontrol* %66, %struct.snd_ctl_elem_value* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %77

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %32

76:                                               ; preds = %32
  br label %77

77:                                               ; preds = %76, %71
  %78 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %79 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %81 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %84 = call i32 @snd_hda_codec_flush_cache(%struct.hda_codec* %83)
  %85 = load i32, i32* %15, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %77
  %88 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %89 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %88, i32 0, i32 0
  %90 = load i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)*, i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)** %89, align 8
  %91 = icmp ne i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %94 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %93, i32 0, i32 0
  %95 = load i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)*, i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)** %94, align 8
  %96 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %97 = bitcast %struct.hda_codec* %96 to %struct.hda_codec.0*
  %98 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %99 = call i32 %95(%struct.hda_codec.0* %97, %struct.snd_ctl_elem_value* %98)
  br label %100

100:                                              ; preds = %92, %87, %77
  %101 = load i32, i32* %15, align 4
  ret i32 %101
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nid_path* @get_input_path(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_codec_flush_cache(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
