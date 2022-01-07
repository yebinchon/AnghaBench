; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_parse_capture_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_parse_capture_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64*, i64, i32, i64*, i32**, %struct.hda_input_mux }
%struct.hda_input_mux = type { i32 }
%struct.nid_path = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i64, i32, i32, i8*, i32)* @parse_capture_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_capture_source(%struct.hda_codec* %0, i64 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hda_gen_spec*, align 8
  %14 = alloca %struct.hda_input_mux*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nid_path*, align 8
  %19 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 0
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %21, align 8
  store %struct.hda_gen_spec* %22, %struct.hda_gen_spec** %13, align 8
  %23 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %24 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %23, i32 0, i32 5
  store %struct.hda_input_mux* %24, %struct.hda_input_mux** %14, align 8
  %25 = load %struct.hda_input_mux*, %struct.hda_input_mux** %14, align 8
  %26 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %100, %6
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %103

32:                                               ; preds = %28
  %33 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %34 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %19, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %19, align 8
  %43 = call i32 @is_reachable_path(%struct.hda_codec* %40, i64 %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %100

46:                                               ; preds = %32
  %47 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %47, i64 %48, i64 %49, i32 %50)
  store %struct.nid_path* %51, %struct.nid_path** %18, align 8
  %52 = load %struct.nid_path*, %struct.nid_path** %18, align 8
  %53 = icmp ne %struct.nid_path* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %100

55:                                               ; preds = %46
  %56 = load %struct.nid_path*, %struct.nid_path** %18, align 8
  %57 = call i32 @print_nid_path(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.nid_path* %56)
  %58 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %59 = load %struct.nid_path*, %struct.nid_path** %18, align 8
  %60 = call i32 @snd_hda_get_path_idx(%struct.hda_codec* %58, %struct.nid_path* %59)
  %61 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %62 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %61, i32 0, i32 4
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %60, i32* %70, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %99, label %73

73:                                               ; preds = %55
  %74 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %75 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.hda_input_mux*, %struct.hda_input_mux** %14, align 8
  %81 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %84 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %79, %73
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  %88 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %87, i32 0, i32 3
  %89 = load i64*, i64** %88, align 8
  %90 = load %struct.hda_input_mux*, %struct.hda_input_mux** %14, align 8
  %91 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %89, i64 %93
  store i64 %86, i64* %94, align 8
  %95 = load %struct.hda_input_mux*, %struct.hda_input_mux** %14, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @snd_hda_add_imux_item(%struct.hda_input_mux* %95, i8* %96, i32 %97, i32* null)
  store i32 1, i32* %16, align 4
  br label %99

99:                                               ; preds = %85, %55
  br label %100

100:                                              ; preds = %99, %54, %45
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %28

103:                                              ; preds = %28
  ret i32 0
}

declare dso_local i32 @is_reachable_path(%struct.hda_codec*, i64, i64) #1

declare dso_local %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec*, i64, i64, i32) #1

declare dso_local i32 @print_nid_path(i8*, %struct.nid_path*) #1

declare dso_local i32 @snd_hda_get_path_idx(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @snd_hda_add_imux_item(%struct.hda_input_mux*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
