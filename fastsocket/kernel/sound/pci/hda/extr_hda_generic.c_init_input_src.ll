; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_init_input_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_init_input_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32*, i32 (%struct.hda_codec.0*, i32*)*, i64, i64, %struct.hda_input_mux }
%struct.hda_codec.0 = type opaque
%struct.hda_input_mux = type { i32 }
%struct.nid_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @init_input_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_input_src(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca %struct.hda_input_mux*, align 8
  %5 = alloca %struct.nid_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  store %struct.hda_gen_spec* %12, %struct.hda_gen_spec** %3, align 8
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %13, i32 0, i32 5
  store %struct.hda_input_mux* %14, %struct.hda_input_mux** %4, align 8
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %22 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %19
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %76, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %63, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %33 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %30
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.nid_path* @get_input_path(%struct.hda_codec* %37, i32 %38, i32 %39)
  store %struct.nid_path* %40, %struct.nid_path** %5, align 8
  %41 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %42 = icmp ne %struct.nid_path* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %45 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %49 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %47, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %43
  %58 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %59 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @snd_hda_activate_path(%struct.hda_codec* %58, %struct.nid_path* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %57, %36
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %30

66:                                               ; preds = %30
  %67 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %68 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @update_hp_mic(%struct.hda_codec* %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %25

79:                                               ; preds = %25
  %80 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %81 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %80, i32 0, i32 2
  %82 = load i32 (%struct.hda_codec.0*, i32*)*, i32 (%struct.hda_codec.0*, i32*)** %81, align 8
  %83 = icmp ne i32 (%struct.hda_codec.0*, i32*)* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %86 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %85, i32 0, i32 2
  %87 = load i32 (%struct.hda_codec.0*, i32*)*, i32 (%struct.hda_codec.0*, i32*)** %86, align 8
  %88 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %89 = bitcast %struct.hda_codec* %88 to %struct.hda_codec.0*
  %90 = call i32 %87(%struct.hda_codec.0* %89, i32* null)
  br label %91

91:                                               ; preds = %84, %79
  ret void
}

declare dso_local %struct.nid_path* @get_input_path(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_activate_path(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

declare dso_local i32 @update_hp_mic(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
