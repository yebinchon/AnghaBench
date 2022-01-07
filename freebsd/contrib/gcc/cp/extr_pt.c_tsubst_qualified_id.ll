; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_tsubst_qualified_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_tsubst_qualified_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCOPE_REF = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@BIT_NOT_EXPR = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@tf_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"dependent-name %qE is parsed as a non-type, but instantiation yields a type\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"say %<typename %E%> if a type is meant\00", align 1
@TREE_LIST = common dso_local global i64 0, align 8
@current_class_type = common dso_local global i32 0, align 4
@OFFSET_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i64, i32, i32)* @tsubst_qualified_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tsubst_qualified_id(i64 %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @SCOPE_REF, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @TREE_OPERAND(i64 %25, i32 1)
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %16, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %6
  store i32 1, i32* %17, align 4
  %32 = load i64, i64* %16, align 8
  %33 = call i64 @TREE_OPERAND(i64 %32, i32 1)
  store i64 %33, i64* %18, align 8
  %34 = load i64, i64* %18, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i64, i64* %18, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @tsubst_template_args(i64 %37, i64 %38, i32 %39, i64 %40)
  store i64 %41, i64* %18, align 8
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i64, i64* %16, align 8
  %44 = call i64 @TREE_OPERAND(i64 %43, i32 0)
  store i64 %44, i64* %16, align 8
  br label %47

45:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  %46 = load i64, i64* @NULL_TREE, align 8
  store i64 %46, i64* %18, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @TREE_OPERAND(i64 %48, i32 0)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i64 @tsubst(i64 %53, i64 %54, i32 %55, i64 %56)
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @tsubst_copy(i64 %58, i64 %59, i32 %60, i64 %61)
  store i64 %62, i64* %14, align 8
  br label %65

63:                                               ; preds = %47
  %64 = load i64, i64* %16, align 8
  store i64 %64, i64* %14, align 8
  br label %65

65:                                               ; preds = %63, %52
  %66 = load i64, i64* %15, align 8
  %67 = call i64 @dependent_type_p(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i64, i64* @NULL_TREE, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @QUALIFIED_NAME_IS_TEMPLATE(i64 %73)
  %75 = call i64 @build_qualified_name(i64 %70, i64 %71, i64 %72, i32 %74)
  store i64 %75, i64* %7, align 8
  br label %210

76:                                               ; preds = %65
  %77 = load i64, i64* %16, align 8
  %78 = call i32 @BASELINK_P(i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %123, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %14, align 8
  %82 = call i64 @DECL_P(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %123, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %14, align 8
  %86 = call i64 @TREE_CODE(i64 %85)
  %87 = load i64, i64* @BIT_NOT_EXPR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i64, i64* @error_mark_node, align 8
  store i64 %90, i64* %14, align 8
  br label %95

91:                                               ; preds = %84
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %14, align 8
  %94 = call i64 @lookup_qualified_name(i64 %92, i64 %93, i32 0, i32 0)
  store i64 %94, i64* %14, align 8
  br label %95

95:                                               ; preds = %91, %89
  %96 = load i64, i64* %14, align 8
  %97 = call i64 @TREE_CODE(i64 %96)
  %98 = load i64, i64* @TEMPLATE_DECL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i64, i64* %14, align 8
  %102 = call i64 @DECL_TEMPLATE_RESULT(i64 %101)
  br label %105

103:                                              ; preds = %95
  %104 = load i64, i64* %14, align 8
  br label %105

105:                                              ; preds = %103, %100
  %106 = phi i64 [ %102, %100 ], [ %104, %103 ]
  %107 = call i64 @TREE_CODE(i64 %106)
  %108 = load i64, i64* @TYPE_DECL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @tf_error, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %116)
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @inform(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i64, i64* @error_mark_node, align 8
  store i64 %121, i64* %7, align 8
  br label %210

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %80, %76
  %124 = load i64, i64* %14, align 8
  %125 = call i64 @DECL_P(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* @NULL_TREE, align 8
  %130 = load i64, i64* %15, align 8
  %131 = call i32 @check_accessibility_of_qualified_id(i64 %128, i64 %129, i64 %130)
  %132 = load i64, i64* %14, align 8
  %133 = call i32 @mark_used(i64 %132)
  br label %134

134:                                              ; preds = %127, %123
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* @error_mark_node, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %14, align 8
  %140 = call i64 @TREE_CODE(i64 %139)
  %141 = load i64, i64* @TREE_LIST, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %138, %134
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @tf_error, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* %8, align 8
  %151 = call i64 @TREE_OPERAND(i64 %150, i32 1)
  %152 = load i64, i64* %14, align 8
  %153 = call i32 @qualified_name_lookup_error(i64 %149, i64 %151, i64 %152)
  br label %154

154:                                              ; preds = %148, %143
  %155 = load i64, i64* @error_mark_node, align 8
  store i64 %155, i64* %7, align 8
  br label %210

156:                                              ; preds = %138
  %157 = load i32, i32* %17, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %18, align 8
  %162 = call i64 @lookup_template_function(i64 %160, i64 %161)
  store i64 %162, i64* %14, align 8
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i64, i64* %14, align 8
  %165 = load i64, i64* @error_mark_node, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @tf_error, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i64, i64* %15, align 8
  %174 = load i64, i64* %8, align 8
  %175 = call i64 @TREE_OPERAND(i64 %174, i32 1)
  %176 = load i64, i64* %14, align 8
  %177 = call i32 @qualified_name_lookup_error(i64 %173, i64 %175, i64 %176)
  br label %195

178:                                              ; preds = %167, %163
  %179 = load i64, i64* %15, align 8
  %180 = call i64 @TYPE_P(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %178
  %183 = load i64, i64* %14, align 8
  %184 = load i64, i64* %15, align 8
  %185 = load i32, i32* @current_class_type, align 4
  %186 = call i64 @adjust_result_of_qualified_name_lookup(i64 %183, i64 %184, i32 %185)
  store i64 %186, i64* %14, align 8
  %187 = load i64, i64* %15, align 8
  %188 = load i64, i64* %14, align 8
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i64, i64* %8, align 8
  %192 = call i32 @QUALIFIED_NAME_IS_TEMPLATE(i64 %191)
  %193 = call i64 @finish_qualified_id_expr(i64 %187, i64 %188, i32 %189, i32 %190, i32 %192, i32 0)
  store i64 %193, i64* %14, align 8
  br label %194

194:                                              ; preds = %182, %178
  br label %195

195:                                              ; preds = %194, %172
  %196 = load i64, i64* %14, align 8
  %197 = call i64 @TREE_CODE(i64 %196)
  %198 = load i64, i64* @SCOPE_REF, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load i64, i64* %14, align 8
  %202 = call i64 @TREE_CODE(i64 %201)
  %203 = load i64, i64* @OFFSET_REF, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i64, i64* %14, align 8
  %207 = call i64 @convert_from_reference(i64 %206)
  store i64 %207, i64* %14, align 8
  br label %208

208:                                              ; preds = %205, %200, %195
  %209 = load i64, i64* %14, align 8
  store i64 %209, i64* %7, align 8
  br label %210

210:                                              ; preds = %208, %154, %120, %69
  %211 = load i64, i64* %7, align 8
  ret i64 %211
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @tsubst_template_args(i64, i64, i32, i64) #1

declare dso_local i64 @tsubst(i64, i64, i32, i64) #1

declare dso_local i64 @tsubst_copy(i64, i64, i32, i64) #1

declare dso_local i64 @dependent_type_p(i64) #1

declare dso_local i64 @build_qualified_name(i64, i64, i64, i32) #1

declare dso_local i32 @QUALIFIED_NAME_IS_TEMPLATE(i64) #1

declare dso_local i32 @BASELINK_P(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @lookup_qualified_name(i64, i64, i32, i32) #1

declare dso_local i64 @DECL_TEMPLATE_RESULT(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @inform(i8*, i64) #1

declare dso_local i32 @check_accessibility_of_qualified_id(i64, i64, i64) #1

declare dso_local i32 @mark_used(i64) #1

declare dso_local i32 @qualified_name_lookup_error(i64, i64, i64) #1

declare dso_local i64 @lookup_template_function(i64, i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @adjust_result_of_qualified_name_lookup(i64, i64, i32) #1

declare dso_local i64 @finish_qualified_id_expr(i64, i64, i32, i32, i32, i32) #1

declare dso_local i64 @convert_from_reference(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
