; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_size_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_size_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__* }

@lang_allocating_phase_enum = common dso_local global i32 0, align 4
@expld = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@exp_dataseg_none = common dso_local global i64 0, align 8
@exp_dataseg_end_seen = common dso_local global i64 0, align 8
@link_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@exp_dataseg_relro_adjust = common dso_local global i64 0, align 8
@output_bfd = common dso_local global %struct.TYPE_8__* null, align 8
@exp_dataseg_adjust = common dso_local global i64 0, align 8
@lang_final_phase_enum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_size_sections(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @lang_allocating_phase_enum, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 0), align 8
  %13 = load i64, i64* @exp_dataseg_none, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 0), align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @one_lang_size_sections_pass(i32* %14, i32 %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 0), align 8
  %18 = load i64, i64* @exp_dataseg_end_seen, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %128

20:                                               ; preds = %2
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @link_info, i32 0, i32 2), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %128

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 1), align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %128

26:                                               ; preds = %23
  %27 = load i64, i64* @exp_dataseg_relro_adjust, align 8
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 0), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 2), align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 3), align 8
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 1), align 8
  %31 = sub nsw i32 0, %30
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 5), align 8
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 1), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 5), align 8
  %39 = add nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 5), align 8
  %42 = sub nsw i32 %41, 1
  %43 = xor i32 %42, -1
  %44 = and i32 %40, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %45, %46
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %26
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %50, %26
  %58 = call i32 (...) @lang_reset_memory_regions()
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @one_lang_size_sections_pass(i32* %59, i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 1), align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %125

65:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @output_bfd, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %8, align 8
  br label %69

69:                                               ; preds = %95, %65
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = icmp ne %struct.TYPE_7__* %70, null
  br i1 %71, label %72, label %99

72:                                               ; preds = %69
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %77 = icmp uge i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 1), align 8
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %84, %78, %72
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %8, align 8
  br label %69

99:                                               ; preds = %69
  %100 = load i32, i32* %9, align 4
  %101 = shl i32 1, %100
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 5), align 8
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %99
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %106 = load i32, i32* %9, align 4
  %107 = shl i32 1, %106
  %108 = sub nsw i32 %105, %107
  %109 = load i32, i32* %5, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 5), align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  br label %115

115:                                              ; preds = %111, %104
  %116 = load i32, i32* %9, align 4
  %117 = shl i32 1, %116
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %120 = call i32 (...) @lang_reset_memory_regions()
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @one_lang_size_sections_pass(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %115, %99
  br label %125

125:                                              ; preds = %124, %57
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @link_info, i32 0, i32 0), align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 1), align 8
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @link_info, i32 0, i32 1), align 4
  br label %173

128:                                              ; preds = %23, %20, %2
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 0), align 8
  %130 = load i64, i64* @exp_dataseg_end_seen, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %172

132:                                              ; preds = %128
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %134 = sub nsw i32 0, %133
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 5), align 8
  %136 = sub nsw i32 %135, 1
  %137 = and i32 %134, %136
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 6), align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 5), align 8
  %140 = sub nsw i32 %139, 1
  %141 = and i32 %138, %140
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %171

144:                                              ; preds = %132
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %144
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 4), align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 5), align 8
  %150 = sub nsw i32 %149, 1
  %151 = xor i32 %150, -1
  %152 = and i32 %148, %151
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 6), align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 5), align 8
  %155 = sub nsw i32 %154, 1
  %156 = xor i32 %155, -1
  %157 = and i32 %153, %156
  %158 = icmp ne i32 %152, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %147
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %11, align 4
  %162 = add i32 %160, %161
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 5), align 8
  %164 = icmp ule i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i64, i64* @exp_dataseg_adjust, align 8
  store i64 %166, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 1, i32 0), align 8
  %167 = call i32 (...) @lang_reset_memory_regions()
  %168 = load i32*, i32** %3, align 8
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @one_lang_size_sections_pass(i32* %168, i32 %169)
  br label %171

171:                                              ; preds = %165, %159, %147, %144, %132
  br label %172

172:                                              ; preds = %171, %128
  br label %173

173:                                              ; preds = %172, %125
  %174 = load i32, i32* @lang_final_phase_enum, align 4
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expld, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @one_lang_size_sections_pass(i32*, i32) #1

declare dso_local i32 @lang_reset_memory_regions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
