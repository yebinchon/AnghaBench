; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_hp_mic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_hp_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i8*, i64, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, i64, i64, i64, %struct.TYPE_2__*, i8**, i8** }
%struct.TYPE_2__ = type { i32, i32, i8* }

@INPUT_PIN_ATTR_INT = common dso_local global i64 0, align 8
@AUTO_CFG_MAX_INS = common dso_local global i32 0, align 4
@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@AC_PINCAP_IN = common dso_local global i32 0, align 4
@AUTO_PIN_MIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"hda-codec: Enable shared I/O jack on NID 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @create_hp_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_hp_mic(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %4, align 8
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 4
  store %struct.auto_pin_cfg* %12, %struct.auto_pin_cfg** %5, align 8
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %14 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %1
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %19 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %144

23:                                               ; preds = %17
  %24 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %144

29:                                               ; preds = %23
  %30 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %35, i8* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @snd_hda_get_input_pin_attr(i32 %43)
  %45 = load i64, i64* @INPUT_PIN_ATTR_INT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %144

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %53 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %55 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AUTO_CFG_MAX_INS, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %144

60:                                               ; preds = %51
  store i8* null, i8** %7, align 8
  %61 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %62 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %68 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %73 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %72, i32 0, i32 6
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %7, align 8
  br label %89

77:                                               ; preds = %66, %60
  %78 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %79 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %84 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %83, i32 0, i32 5
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %7, align 8
  br label %88

88:                                               ; preds = %82, %77
  br label %89

89:                                               ; preds = %88, %71
  %90 = load i8*, i8** %7, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %144

93:                                               ; preds = %89
  %94 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %94, i8* %95)
  %97 = load i32, i32* @AC_PINCAP_IN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %144

101:                                              ; preds = %93
  %102 = load i8*, i8** %7, align 8
  %103 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %104 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %103, i32 0, i32 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %107 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  store i8* %102, i8** %111, align 8
  %112 = load i32, i32* @AUTO_PIN_MIC, align 4
  %113 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %114 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %113, i32 0, i32 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %117 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i32 %112, i32* %121, align 4
  %122 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %123 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %122, i32 0, i32 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %126 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %132 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %136 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %139 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %141 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @snd_printdd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %101, %100, %92, %59, %47, %28, %22
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i8*) #1

declare dso_local i64 @snd_hda_get_input_pin_attr(i32) #1

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_printdd(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
