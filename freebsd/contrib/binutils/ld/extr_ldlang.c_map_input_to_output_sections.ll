; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_map_input_to_output_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_map_input_to_output_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_23__, i32, %struct.TYPE_25__ }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_22__* }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_33__*, %struct.TYPE_26__, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__* }

@constructor_list = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@ONLY_IF_RW = common dso_local global i32 0, align 4
@ONLY_IF_RO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_NEVER_LOAD = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i8*, %struct.TYPE_23__*)* @map_input_to_output_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_input_to_output_sections(%struct.TYPE_22__* %0, i8* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  br label %9

9:                                                ; preds = %219, %3
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %11 = icmp ne %struct.TYPE_22__* %10, null
  br i1 %11, label %12, label %224

12:                                               ; preds = %9
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %218 [
    i32 128, label %17
    i32 140, label %23
    i32 133, label %27
    i32 132, label %100
    i32 129, label %101
    i32 137, label %106
    i32 139, label %114
    i32 136, label %151
    i32 138, label %152
    i32 134, label %152
    i32 130, label %152
    i32 131, label %152
    i32 135, label %152
    i32 141, label %164
    i32 142, label %181
    i32 143, label %183
  ]

17:                                               ; preds = %12
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 6
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = call i32 @wild(i32* %19, i8* %20, %struct.TYPE_23__* %21)
  br label %218

23:                                               ; preds = %12
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @constructor_list, i32 0, i32 0), align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  call void @map_input_to_output_sections(%struct.TYPE_22__* %24, i8* %25, %struct.TYPE_23__* %26)
  br label %218

27:                                               ; preds = %12
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %27
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ONLY_IF_RW, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ONLY_IF_RO, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %218

48:                                               ; preds = %40, %33
  %49 = load i32, i32* @TRUE, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 5
  store i32 %49, i32* %52, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 5
  %60 = call i32 @check_input_sections(%struct.TYPE_22__* %57, %struct.TYPE_23__* %59)
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %48
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ONLY_IF_RW, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %86, label %73

73:                                               ; preds = %66, %48
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ONLY_IF_RO, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79, %66
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  br label %218

90:                                               ; preds = %79, %73
  br label %91

91:                                               ; preds = %90, %27
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 5
  call void @map_input_to_output_sections(%struct.TYPE_22__* %96, i8* %97, %struct.TYPE_23__* %99)
  br label %218

100:                                              ; preds = %12
  br label %218

101:                                              ; preds = %12
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %5, align 8
  br label %218

106:                                              ; preds = %12
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  call void @map_input_to_output_sections(%struct.TYPE_22__* %111, i8* %112, %struct.TYPE_23__* %113)
  br label %218

114:                                              ; preds = %12
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @exp_init_os(i32 %118)
  %120 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  store i32 %120, i32* %7, align 4
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %114
  %128 = load i32, i32* @SEC_ALLOC, align 4
  %129 = load i32, i32* @SEC_LOAD, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %127, %114
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %135, align 8
  %137 = icmp eq %struct.TYPE_33__* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @init_os(%struct.TYPE_23__* %139, i32* null, i32 %140)
  br label %150

142:                                              ; preds = %133
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %142, %138
  br label %218

151:                                              ; preds = %12
  br label %218

152:                                              ; preds = %12, %12, %12, %12, %12
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %154 = icmp ne %struct.TYPE_23__* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %157, align 8
  %159 = icmp eq %struct.TYPE_33__* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %162 = call i32 @init_os(%struct.TYPE_23__* %161, i32* null, i32 0)
  br label %163

163:                                              ; preds = %160, %155, %152
  br label %218

164:                                              ; preds = %12
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %166 = icmp ne %struct.TYPE_23__* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %169, align 8
  %171 = icmp eq %struct.TYPE_33__* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %174 = call i32 @init_os(%struct.TYPE_23__* %173, i32* null, i32 0)
  br label %175

175:                                              ; preds = %172, %167, %164
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @exp_init_os(i32 %179)
  br label %218

181:                                              ; preds = %12
  %182 = call i32 (...) @FAIL()
  br label %218

183:                                              ; preds = %12
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %186, align 8
  %188 = icmp ne %struct.TYPE_32__* %187, null
  br i1 %188, label %189, label %197

189:                                              ; preds = %183
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %217, label %197

197:                                              ; preds = %189, %183
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call %struct.TYPE_23__* @lang_output_section_statement_lookup(i32 %201)
  store %struct.TYPE_23__* %202, %struct.TYPE_23__** %8, align 8
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 3
  %205 = load %struct.TYPE_33__*, %struct.TYPE_33__** %204, align 8
  %206 = icmp eq %struct.TYPE_33__* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %197
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %209 = call i32 @init_os(%struct.TYPE_23__* %208, i32* null, i32 0)
  br label %210

210:                                              ; preds = %207, %197
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  br label %217

217:                                              ; preds = %210, %189
  br label %218

218:                                              ; preds = %12, %217, %181, %175, %163, %151, %150, %106, %101, %100, %91, %86, %47, %23, %17
  br label %219

219:                                              ; preds = %218
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 7
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %222, align 8
  store %struct.TYPE_22__* %223, %struct.TYPE_22__** %4, align 8
  br label %9

224:                                              ; preds = %9
  ret void
}

declare dso_local i32 @wild(i32*, i8*, %struct.TYPE_23__*) #1

declare dso_local i32 @check_input_sections(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @exp_init_os(i32) #1

declare dso_local i32 @init_os(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @FAIL(...) #1

declare dso_local %struct.TYPE_23__* @lang_output_section_statement_lookup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
