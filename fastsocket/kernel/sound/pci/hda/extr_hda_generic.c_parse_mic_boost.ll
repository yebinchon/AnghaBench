; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_parse_mic_boost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_parse_mic_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i8**, i32*, i32, %struct.hda_input_mux, %struct.auto_pin_cfg }
%struct.hda_input_mux = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.auto_pin_cfg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.nid_path = type { i32* }

@AUTO_PIN_LINE_IN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s Boost Volume\00", align 1
@HDA_CTL_WIDGET_VOL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NID_PATH_BOOST_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @parse_mic_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mic_boost(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca %struct.hda_input_mux*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nid_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [44 x i8], align 16
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %4, align 8
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 4
  store %struct.auto_pin_cfg* %16, %struct.auto_pin_cfg** %5, align 8
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 3
  store %struct.hda_input_mux* %18, %struct.hda_input_mux** %6, align 8
  %19 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %20 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %109

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %105, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.hda_input_mux*, %struct.hda_input_mux** %6, align 8
  %28 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %108

31:                                               ; preds = %25
  %32 = load %struct.hda_input_mux*, %struct.hda_input_mux** %6, align 8
  %33 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.hda_input_mux*, %struct.hda_input_mux** %6, align 8
  %42 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %105

46:                                               ; preds = %31
  %47 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AUTO_PIN_LINE_IN, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %105

58:                                               ; preds = %46
  %59 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.nid_path* @get_input_path(%struct.hda_codec* %59, i32 0, i32 %60)
  store %struct.nid_path* %61, %struct.nid_path** %8, align 8
  %62 = load %struct.nid_path*, %struct.nid_path** %8, align 8
  %63 = icmp ne %struct.nid_path* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %105

65:                                               ; preds = %58
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = load %struct.nid_path*, %struct.nid_path** %8, align 8
  %68 = call i32 @look_for_boost_amp(%struct.hda_codec* %66, %struct.nid_path* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %105

72:                                               ; preds = %65
  %73 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %74 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %75 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @snprintf(i8* %73, i32 44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %83 = load i32, i32* @HDA_CTL_WIDGET_VOL, align 4
  %84 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %85 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %86 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @add_control(%struct.hda_gen_spec* %82, i32 %83, i8* %84, i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %72
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %109

98:                                               ; preds = %72
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.nid_path*, %struct.nid_path** %8, align 8
  %101 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @NID_PATH_BOOST_CTL, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %71, %64, %57, %45
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %25

108:                                              ; preds = %25
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %95, %23
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.nid_path* @get_input_path(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @look_for_boost_amp(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @add_control(%struct.hda_gen_spec*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
