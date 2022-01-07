; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unswitch.c_unswitch_single_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unswitch.c_unswitch_single_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32 }
%struct.loop = type { i32, i32, i64 }

@NULL_RTX = common dso_local global i64 0, align 8
@PARAM_MAX_UNSWITCH_LEVEL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c";; Not unswitching anymore, hit max level\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c";; Not unswitching, not innermost loop\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c";; Not unswitching, can't duplicate loop\0A\00", align 1
@PARAM_MAX_UNSWITCH_INSNS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c";; Not unswitching, loop too big\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c";; Not unswitching, not hot area\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c";; Not unswitching, loop iterations < 1\0A\00", align 1
@const0_rtx = common dso_local global i64 0, align 8
@const_true_rtx = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c";; Unswitching loop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loops*, %struct.loop*, i64, i32)* @unswitch_single_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unswitch_single_loop(%struct.loops* %0, %struct.loop* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.loops*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.loop*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %5, align 8
  store %struct.loop* %1, %struct.loop** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i64, i64* @NULL_RTX, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @PARAM_MAX_UNSWITCH_LEVEL, align 4
  %23 = call i32 @PARAM_VALUE(i32 %22)
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load i64, i64* @dump_file, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* @dump_file, align 8
  %30 = call i32 @fprintf(i64 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  br label %245

32:                                               ; preds = %4
  %33 = load %struct.loop*, %struct.loop** %6, align 8
  %34 = getelementptr inbounds %struct.loop, %struct.loop* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64, i64* @dump_file, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* @dump_file, align 8
  %42 = call i32 @fprintf(i64 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  br label %245

44:                                               ; preds = %32
  %45 = load %struct.loop*, %struct.loop** %6, align 8
  %46 = call i32 @can_duplicate_loop_p(%struct.loop* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @dump_file, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* @dump_file, align 8
  %53 = call i32 @fprintf(i64 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  br label %245

55:                                               ; preds = %44
  %56 = load %struct.loop*, %struct.loop** %6, align 8
  %57 = call i32 @num_loop_insns(%struct.loop* %56)
  %58 = load i32, i32* @PARAM_MAX_UNSWITCH_INSNS, align 4
  %59 = call i32 @PARAM_VALUE(i32 %58)
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i64, i64* @dump_file, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i64, i64* @dump_file, align 8
  %66 = call i32 @fprintf(i64 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  br label %245

68:                                               ; preds = %55
  %69 = load %struct.loop*, %struct.loop** %6, align 8
  %70 = getelementptr inbounds %struct.loop, %struct.loop* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @maybe_hot_bb_p(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = load i64, i64* @dump_file, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i64, i64* @dump_file, align 8
  %79 = call i32 @fprintf(i64 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  br label %245

81:                                               ; preds = %68
  %82 = load %struct.loop*, %struct.loop** %6, align 8
  %83 = call i32 @expected_loop_iterations(%struct.loop* %82)
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i64, i64* @dump_file, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i64, i64* @dump_file, align 8
  %90 = call i32 @fprintf(i64 %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %85
  br label %245

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %191, %92
  store i32 0, i32* %18, align 4
  %94 = load i64, i64* @NULL_RTX, align 8
  store i64 %94, i64* %17, align 8
  %95 = load %struct.loop*, %struct.loop** %6, align 8
  %96 = call i32* @get_loop_body(%struct.loop* %95)
  store i32* %96, i32** %9, align 8
  %97 = load %struct.loop*, %struct.loop** %6, align 8
  %98 = call i32 @iv_analysis_loop_init(%struct.loop* %97)
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %116, %93
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.loop*, %struct.loop** %6, align 8
  %102 = getelementptr inbounds %struct.loop, %struct.loop* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ult i32 %100, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %11, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.loop*, %struct.loop** %6, align 8
  %112 = call i64 @may_unswitch_on(i32 %110, %struct.loop* %111, i64* %17)
  store i64 %112, i64* %12, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %119

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %99

119:                                              ; preds = %114, %99
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.loop*, %struct.loop** %6, align 8
  %122 = getelementptr inbounds %struct.loop, %struct.loop* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @free(i32* %126)
  br label %245

128:                                              ; preds = %119
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @const0_rtx, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %157

132:                                              ; preds = %128
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* @const_true_rtx, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %157

136:                                              ; preds = %132
  %137 = load i64, i64* %12, align 8
  %138 = call i64 @reversed_condition(i64 %137)
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* %13, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i64, i64* %13, align 8
  %143 = call i64 @canon_condition(i64 %142)
  store i64 %143, i64* %13, align 8
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i64, i64* %7, align 8
  store i64 %145, i64* %16, align 8
  br label %146

146:                                              ; preds = %153, %144
  %147 = load i64, i64* %16, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i64, i64* %16, align 8
  %151 = call i64 @XEXP(i64 %150, i32 0)
  %152 = call i32 @simplify_using_condition(i64 %151, i64* %12, i32* null)
  br label %153

153:                                              ; preds = %149
  %154 = load i64, i64* %16, align 8
  %155 = call i64 @XEXP(i64 %154, i32 1)
  store i64 %155, i64* %16, align 8
  br label %146

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %132, %128
  %158 = load i64, i64* %12, align 8
  %159 = load i64, i64* @const_true_rtx, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %157
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %11, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @FALLTHRU_EDGE(i32 %166)
  store i32 %167, i32* %19, align 4
  %168 = load %struct.loops*, %struct.loops** %5, align 8
  %169 = load i32, i32* %19, align 4
  %170 = call i32 @remove_path(%struct.loops* %168, i32 %169)
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @free(i32* %171)
  store i32 1, i32* %18, align 4
  br label %190

173:                                              ; preds = %157
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* @const0_rtx, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %173
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %11, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @BRANCH_EDGE(i32 %182)
  store i32 %183, i32* %19, align 4
  %184 = load %struct.loops*, %struct.loops** %5, align 8
  %185 = load i32, i32* %19, align 4
  %186 = call i32 @remove_path(%struct.loops* %184, i32 %185)
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @free(i32* %187)
  store i32 1, i32* %18, align 4
  br label %189

189:                                              ; preds = %177, %173
  br label %190

190:                                              ; preds = %189, %161
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %18, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %93, label %194

194:                                              ; preds = %191
  %195 = load i64, i64* %12, align 8
  %196 = load i64, i64* %7, align 8
  %197 = call i64 @alloc_EXPR_LIST(i32 0, i64 %195, i64 %196)
  store i64 %197, i64* %14, align 8
  %198 = load i64, i64* %13, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* %7, align 8
  %203 = call i64 @alloc_EXPR_LIST(i32 0, i64 %201, i64 %202)
  store i64 %203, i64* %15, align 8
  br label %206

204:                                              ; preds = %194
  %205 = load i64, i64* %7, align 8
  store i64 %205, i64* %15, align 8
  br label %206

206:                                              ; preds = %204, %200
  %207 = load i64, i64* @dump_file, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i64, i64* @dump_file, align 8
  %211 = call i32 @fprintf(i64 %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %206
  %213 = load %struct.loops*, %struct.loops** %5, align 8
  %214 = load %struct.loop*, %struct.loop** %6, align 8
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* %11, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i64, i64* %12, align 8
  %221 = load i64, i64* %17, align 8
  %222 = call %struct.loop* @unswitch_loop(%struct.loops* %213, %struct.loop* %214, i32 %219, i64 %220, i64 %221)
  store %struct.loop* %222, %struct.loop** %10, align 8
  %223 = load %struct.loop*, %struct.loop** %10, align 8
  %224 = call i32 @gcc_assert(%struct.loop* %223)
  %225 = load %struct.loops*, %struct.loops** %5, align 8
  %226 = load %struct.loop*, %struct.loop** %10, align 8
  %227 = load i64, i64* %15, align 8
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  call void @unswitch_single_loop(%struct.loops* %225, %struct.loop* %226, i64 %227, i32 %229)
  %230 = load %struct.loops*, %struct.loops** %5, align 8
  %231 = load %struct.loop*, %struct.loop** %6, align 8
  %232 = load i64, i64* %14, align 8
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  call void @unswitch_single_loop(%struct.loops* %230, %struct.loop* %231, i64 %232, i32 %234)
  %235 = load i64, i64* %14, align 8
  %236 = call i32 @free_EXPR_LIST_node(i64 %235)
  %237 = load i64, i64* %13, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %212
  %240 = load i64, i64* %15, align 8
  %241 = call i32 @free_EXPR_LIST_node(i64 %240)
  br label %242

242:                                              ; preds = %239, %212
  %243 = load i32*, i32** %9, align 8
  %244 = call i32 @free(i32* %243)
  br label %245

245:                                              ; preds = %242, %125, %91, %80, %67, %54, %43, %31
  ret void
}

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @can_duplicate_loop_p(%struct.loop*) #1

declare dso_local i32 @num_loop_insns(%struct.loop*) #1

declare dso_local i32 @maybe_hot_bb_p(i32) #1

declare dso_local i32 @expected_loop_iterations(%struct.loop*) #1

declare dso_local i32* @get_loop_body(%struct.loop*) #1

declare dso_local i32 @iv_analysis_loop_init(%struct.loop*) #1

declare dso_local i64 @may_unswitch_on(i32, %struct.loop*, i64*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @reversed_condition(i64) #1

declare dso_local i64 @canon_condition(i64) #1

declare dso_local i32 @simplify_using_condition(i64, i64*, i32*) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @FALLTHRU_EDGE(i32) #1

declare dso_local i32 @remove_path(%struct.loops*, i32) #1

declare dso_local i32 @BRANCH_EDGE(i32) #1

declare dso_local i64 @alloc_EXPR_LIST(i32, i64, i64) #1

declare dso_local %struct.loop* @unswitch_loop(%struct.loops*, %struct.loop*, i32, i64, i64) #1

declare dso_local i32 @gcc_assert(%struct.loop*) #1

declare dso_local i32 @free_EXPR_LIST_node(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
