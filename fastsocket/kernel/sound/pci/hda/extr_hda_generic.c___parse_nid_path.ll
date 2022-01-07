; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c___parse_nid_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c___parse_nid_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32*, i64, i32*, i32* }

@AC_WID_AUD_OUT = common dso_local global i32 0, align 4
@MAX_NID_PATH_DEPTH = common dso_local global i32 0, align 4
@AC_WID_AUD_IN = common dso_local global i32 0, align 4
@AC_WID_PIN = common dso_local global i32 0, align 4
@AC_WID_AUD_MIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32, %struct.nid_path*, i32)* @__parse_nid_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_nid_path(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, %struct.nid_path* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nid_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.nid_path* %4, %struct.nid_path** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %11, align 4
  br label %29

22:                                               ; preds = %6
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %174

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %21
  %30 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @snd_hda_get_conn_list(%struct.hda_codec* %30, i32 %31, i32** %14)
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %75, %29
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %33
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %45
  %49 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @get_wcaps(%struct.hda_codec* %49, i32 %54)
  %56 = call i32 @get_wcaps_type(i32 %55)
  %57 = load i32, i32* @AC_WID_AUD_OUT, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %48
  %60 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @is_dac_already_used(%struct.hda_codec* %60, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59, %48, %45
  br label %75

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %37
  %71 = load i32, i32* %11, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %129

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %33

78:                                               ; preds = %33
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @MAX_NID_PATH_DEPTH, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %174

83:                                               ; preds = %78
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %125, %83
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %128

88:                                               ; preds = %84
  %89 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @get_wcaps(%struct.hda_codec* %89, i32 %94)
  %96 = call i32 @get_wcaps_type(i32 %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* @AC_WID_AUD_OUT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @AC_WID_AUD_IN, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @AC_WID_PIN, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %100, %88
  br label %125

109:                                              ; preds = %104
  %110 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i32 @__parse_nid_path(%struct.hda_codec* %110, i32 %111, i32 %116, i32 %117, %struct.nid_path* %118, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %129

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124, %108
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %84

128:                                              ; preds = %84
  store i32 0, i32* %7, align 4
  br label %174

129:                                              ; preds = %123, %73
  %130 = load i32*, i32** %14, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %136 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %139 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 %134, i32* %141, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %144 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %147 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  store i32 %142, i32* %150, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp sgt i32 %151, 1
  br i1 %152, label %153, label %169

153:                                              ; preds = %129
  %154 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @get_wcaps(%struct.hda_codec* %154, i32 %155)
  %157 = call i32 @get_wcaps_type(i32 %156)
  %158 = load i32, i32* @AC_WID_AUD_MIX, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %162 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %165 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, 1
  %168 = getelementptr inbounds i32, i32* %163, i64 %167
  store i32 1, i32* %168, align 4
  br label %169

169:                                              ; preds = %160, %153, %129
  %170 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %171 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %171, align 8
  store i32 1, i32* %7, align 4
  br label %174

174:                                              ; preds = %169, %128, %82, %27
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local i32 @snd_hda_get_conn_list(%struct.hda_codec*, i32, i32**) #1

declare dso_local i32 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i64 @is_dac_already_used(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
