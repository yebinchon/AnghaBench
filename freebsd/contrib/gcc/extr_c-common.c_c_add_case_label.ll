; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_add_case_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_add_case_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }

@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"pointers are not permitted as case values\00", align 1
@pedantic = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"range expressions in switch statements are non-standard\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"empty range specified\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"duplicate (or overlapping) case value\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%Jthis is the first entry overlapping that value\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"duplicate case value\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%Jpreviously used here\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"multiple default labels in one switch\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%Jthis is the first default label\00", align 1
@LABEL_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @c_add_case_label(%struct.TYPE_12__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = call i64 (...) @create_artificial_label()
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @error_mark_node, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %5
  br label %227

28:                                               ; preds = %23
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @TREE_TYPE(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @TREE_TYPE(i64 %36)
  %38 = call i64 @POINTER_TYPE_P(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %35, %31, %28
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @TREE_TYPE(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @TREE_TYPE(i64 %48)
  %50 = call i64 @POINTER_TYPE_P(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %35
  %53 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %227

54:                                               ; preds = %47, %43, %40
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i64, i64* @pedantic, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @pedwarn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57, %54
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @TREE_TYPE(i64 %63)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i64, i64* %10, align 8
  %69 = call i64 @check_case_value(i64 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @convert_and_check(i64 %70, i64 %71)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @error_mark_node, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %227

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @check_case_value(i64 %82)
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @convert_and_check(i64 %84, i64 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @error_mark_node, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %227

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %78
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %92
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @tree_int_cst_equal(i64 %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i64, i64* @NULL_TREE, align 8
  store i64 %104, i64* %11, align 8
  br label %113

105:                                              ; preds = %98
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @tree_int_cst_lt(i64 %106, i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = call i32 @warning(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105
  br label %113

113:                                              ; preds = %112, %103
  br label %114

114:                                              ; preds = %113, %95, %92
  %115 = load i64, i64* %10, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %11, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %124

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %122
  %125 = phi i64* [ %11, %122 ], [ null, %123 ]
  %126 = call i32 @check_case_bounds(i64 %118, i64 %119, i64* %10, i64* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load i64, i64* @NULL_TREE, align 8
  store i64 %129, i64* %6, align 8
  br label %240

130:                                              ; preds = %124, %114
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %132 = load i64, i64* %10, align 8
  %133 = trunc i64 %132 to i32
  %134 = call %struct.TYPE_11__* @splay_tree_lookup(%struct.TYPE_12__* %131, i32 %133)
  store %struct.TYPE_11__* %134, %struct.TYPE_11__** %15, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %136 = icmp ne %struct.TYPE_11__* %135, null
  br i1 %136, label %187, label %137

137:                                              ; preds = %130
  %138 = load i64, i64* %10, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i64, i64* %11, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %187

143:                                              ; preds = %140, %137
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %145 = load i64, i64* %10, align 8
  %146 = trunc i64 %145 to i32
  %147 = call %struct.TYPE_11__* @splay_tree_predecessor(%struct.TYPE_12__* %144, i32 %146)
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %16, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = load i64, i64* %10, align 8
  %150 = trunc i64 %149 to i32
  %151 = call %struct.TYPE_11__* @splay_tree_successor(%struct.TYPE_12__* %148, i32 %150)
  store %struct.TYPE_11__* %151, %struct.TYPE_11__** %17, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %153 = icmp ne %struct.TYPE_11__* %152, null
  br i1 %153, label %154, label %170

154:                                              ; preds = %143
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @CASE_HIGH(i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %154
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @CASE_HIGH(i64 %163)
  %165 = load i64, i64* %10, align 8
  %166 = call i64 @tree_int_cst_compare(i64 %164, i64 %165)
  %167 = icmp sge i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %169, %struct.TYPE_11__** %15, align 8
  br label %186

170:                                              ; preds = %160, %154, %143
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %172 = icmp ne %struct.TYPE_11__* %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load i64, i64* %11, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %11, align 8
  %181 = call i64 @tree_int_cst_compare(i64 %179, i64 %180)
  %182 = icmp sle i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %184, %struct.TYPE_11__** %15, align 8
  br label %185

185:                                              ; preds = %183, %176, %173, %170
  br label %186

186:                                              ; preds = %185, %168
  br label %187

187:                                              ; preds = %186, %140, %130
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %189 = icmp ne %struct.TYPE_11__* %188, null
  br i1 %189, label %190, label %214

190:                                              ; preds = %187
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @CASE_LABEL(i64 %193)
  store i64 %194, i64* %18, align 8
  %195 = load i64, i64* %11, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %199 = load i64, i64* %18, align 8
  %200 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %199)
  br label %213

201:                                              ; preds = %190
  %202 = load i64, i64* %10, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %206 = load i64, i64* %18, align 8
  %207 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %206)
  br label %212

208:                                              ; preds = %201
  %209 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %210 = load i64, i64* %18, align 8
  %211 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %210)
  br label %212

212:                                              ; preds = %208, %204
  br label %213

213:                                              ; preds = %212, %197
  br label %227

214:                                              ; preds = %187
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* %11, align 8
  %217 = load i64, i64* %13, align 8
  %218 = call i32 @build_case_label(i64 %215, i64 %216, i64 %217)
  %219 = call i64 @add_stmt(i32 %218)
  store i64 %219, i64* %14, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %221 = load i64, i64* %10, align 8
  %222 = trunc i64 %221 to i32
  %223 = load i64, i64* %14, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 @splay_tree_insert(%struct.TYPE_12__* %220, i32 %222, i32 %224)
  %226 = load i64, i64* %14, align 8
  store i64 %226, i64* %6, align 8
  br label %240

227:                                              ; preds = %213, %90, %76, %52, %27
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %227
  %233 = call i64 (...) @create_artificial_label()
  store i64 %233, i64* %19, align 8
  %234 = load i32, i32* @LABEL_EXPR, align 4
  %235 = load i64, i64* %19, align 8
  %236 = call i32 @build_stmt(i32 %234, i64 %235)
  %237 = call i64 @add_stmt(i32 %236)
  br label %238

238:                                              ; preds = %232, %227
  %239 = load i64, i64* @error_mark_node, align 8
  store i64 %239, i64* %6, align 8
  br label %240

240:                                              ; preds = %238, %214, %128
  %241 = load i64, i64* %6, align 8
  ret i64 %241
}

declare dso_local i64 @create_artificial_label(...) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i64 @check_case_value(i64) #1

declare dso_local i64 @convert_and_check(i64, i64) #1

declare dso_local i64 @tree_int_cst_equal(i64, i64) #1

declare dso_local i32 @tree_int_cst_lt(i64, i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @check_case_bounds(i64, i64, i64*, i64*) #1

declare dso_local %struct.TYPE_11__* @splay_tree_lookup(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @splay_tree_predecessor(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @splay_tree_successor(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @CASE_HIGH(i64) #1

declare dso_local i64 @tree_int_cst_compare(i64, i64) #1

declare dso_local i64 @CASE_LABEL(i64) #1

declare dso_local i64 @add_stmt(i32) #1

declare dso_local i32 @build_case_label(i64, i64, i64) #1

declare dso_local i32 @splay_tree_insert(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @build_stmt(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
