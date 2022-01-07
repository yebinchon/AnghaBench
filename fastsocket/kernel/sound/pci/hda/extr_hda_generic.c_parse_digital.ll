; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_parse_digital.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_parse_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i8*, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i8*, i8*, %struct.TYPE_4__, i8**, %struct.TYPE_3__, i32, i8** }
%struct.TYPE_4__ = type { i32, i8*, i32*, i8** }
%struct.TYPE_3__ = type { i8**, i8* }
%struct.nid_path = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"digout\00", align 1
@PIN_OUT = common dso_local global i32 0, align 4
@AC_WID_AUD_IN = common dso_local global i64 0, align 8
@AC_WCAP_DIGITAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"digin\00", align 1
@PIN_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @parse_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_digital(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca %struct.nid_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 2
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  store %struct.hda_gen_spec* %12, %struct.hda_gen_spec** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %103, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %106

20:                                               ; preds = %13
  %21 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %22 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @look_for_dac(%struct.hda_codec* %29, i8* %30, i32 1)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %103

35:                                               ; preds = %20
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %36, i8* %37, i8* %38, i32 0)
  store %struct.nid_path* %39, %struct.nid_path** %4, align 8
  %40 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %41 = icmp ne %struct.nid_path* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %103

43:                                               ; preds = %35
  %44 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %45 = call i32 @print_nid_path(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.nid_path* %44)
  %46 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %47 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %50 = call i8* @snd_hda_get_path_idx(%struct.hda_codec* %48, %struct.nid_path* %49)
  %51 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %52 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %51, i32 0, i32 6
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  store i8* %50, i8** %56, align 8
  %57 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* @PIN_OUT, align 4
  %60 = call i32 @set_pin_target(%struct.hda_codec* %57, i8* %58, i32 %59, i32 0)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %43
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %66 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %69 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %75 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  br label %100

76:                                               ; preds = %43
  %77 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %78 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %77, i32 0, i32 3
  %79 = load i8**, i8*** %78, align 8
  %80 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %81 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i8** %79, i8*** %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %85 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %84, i32 0, i32 3
  %86 = load i8**, i8*** %85, align 8
  %87 = call i32 @ARRAY_SIZE(i8** %86)
  %88 = sub nsw i32 %87, 1
  %89 = icmp sge i32 %83, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %106

91:                                               ; preds = %76
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %94 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %93, i32 0, i32 3
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  store i8* %92, i8** %99, align 8
  br label %100

100:                                              ; preds = %91, %63
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %42, %34
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %13

106:                                              ; preds = %90, %13
  %107 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %108 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %172

112:                                              ; preds = %106
  %113 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %114 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %8, align 8
  %117 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %118 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %166, %112
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %123 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %171

126:                                              ; preds = %120
  %127 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @get_wcaps(%struct.hda_codec* %127, i8* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i64 @get_wcaps_type(i32 %130)
  %132 = load i64, i64* @AC_WID_AUD_IN, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %166

135:                                              ; preds = %126
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @AC_WCAP_DIGITAL, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  br label %166

141:                                              ; preds = %135
  %142 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %142, i8* %143, i8* %144, i32 0)
  store %struct.nid_path* %145, %struct.nid_path** %4, align 8
  %146 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %147 = icmp ne %struct.nid_path* %146, null
  br i1 %147, label %148, label %165

148:                                              ; preds = %141
  %149 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %150 = call i32 @print_nid_path(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.nid_path* %149)
  %151 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %152 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %151, i32 0, i32 0
  store i32 1, i32* %152, align 4
  %153 = load i8*, i8** %7, align 8
  %154 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %155 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %157 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %158 = call i8* @snd_hda_get_path_idx(%struct.hda_codec* %156, %struct.nid_path* %157)
  %159 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %160 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* @PIN_IN, align 4
  %164 = call i32 @set_pin_target(%struct.hda_codec* %161, i8* %162, i32 %163, i32 0)
  br label %171

165:                                              ; preds = %141
  br label %166

166:                                              ; preds = %165, %140, %134
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %7, align 8
  br label %120

171:                                              ; preds = %148, %120
  br label %172

172:                                              ; preds = %171, %106
  ret void
}

declare dso_local i8* @look_for_dac(%struct.hda_codec*, i8*, i32) #1

declare dso_local %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec*, i8*, i8*, i32) #1

declare dso_local i32 @print_nid_path(i8*, %struct.nid_path*) #1

declare dso_local i8* @snd_hda_get_path_idx(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @set_pin_target(%struct.hda_codec*, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i8*) #1

declare dso_local i64 @get_wcaps_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
