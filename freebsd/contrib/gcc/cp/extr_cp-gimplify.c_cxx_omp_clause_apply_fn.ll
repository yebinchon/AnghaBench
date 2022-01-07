; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_cxx_omp_clause_apply_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_cxx_omp_clause_apply_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARRAY_TYPE = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i32 0, align 4
@size_zero_node = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32* null, align 8
@LABEL_EXPR = common dso_local global i32 0, align 4
@void_list_node = common dso_local global i32* null, align 8
@NE_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32* null, align 8
@COND_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @cxx_omp_clause_apply_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cxx_omp_clause_apply_fn(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %252

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @TREE_TYPE(i32* %25)
  %27 = call i32* @TYPE_ARG_TYPES(i32* %26)
  %28 = call i32* @TREE_CHAIN(i32* %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @TREE_CHAIN(i32* %32)
  store i32* %33, i32** %8, align 8
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @TREE_TYPE(i32* %35)
  %37 = call i64 @TREE_CODE(i32* %36)
  %38 = load i64, i64* @ARRAY_TYPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %212

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = call i32* @TREE_TYPE(i32* %41)
  store i32* %42, i32** %11, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %43 = load i32*, i32** %6, align 8
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %7, align 8
  store i32* %44, i32** %15, align 8
  br label %45

45:                                               ; preds = %62, %40
  %46 = load i32*, i32** %11, align 8
  %47 = call i32* @TREE_TYPE(i32* %46)
  store i32* %47, i32** %11, align 8
  %48 = load i32, i32* @ARRAY_REF, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* @size_zero_node, align 4
  %52 = call i32* @build4(i32 %48, i32* %49, i32* %50, i32 %51, i32* null, i32* null)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load i32, i32* @ARRAY_REF, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* @size_zero_node, align 4
  %60 = call i32* @build4(i32 %56, i32* %57, i32* %58, i32 %59, i32* null, i32* null)
  store i32* %60, i32** %15, align 8
  br label %61

61:                                               ; preds = %55, %45
  br label %62

62:                                               ; preds = %61
  %63 = load i32*, i32** %11, align 8
  %64 = call i64 @TREE_CODE(i32* %63)
  %65 = load i64, i64* @ARRAY_TYPE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %45, label %67

67:                                               ; preds = %62
  %68 = load i32*, i32** %12, align 8
  %69 = call i32* @build_fold_addr_expr(i32* %68)
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32*, i32** %15, align 8
  %74 = call i32* @build_fold_addr_expr(i32* %73)
  store i32* %74, i32** %15, align 8
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32*, i32** %6, align 8
  %77 = call i32* @TREE_TYPE(i32* %76)
  %78 = call i32* @TYPE_SIZE_UNIT(i32* %77)
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32* @TREE_TYPE(i32* %79)
  %81 = load i32*, i32** %13, align 8
  %82 = call i32* @fold_convert(i32* %80, i32* %81)
  store i32* %82, i32** %13, align 8
  %83 = load i32, i32* @PLUS_EXPR, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = call i32* @TREE_TYPE(i32* %84)
  %86 = load i32*, i32** %12, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32* @build2(i32 %83, i32* %85, i32* %86, i32* %87)
  store i32* %88, i32** %13, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i32* @TREE_TYPE(i32* %89)
  %91 = call i32* @create_tmp_var(i32* %90, i32* null)
  store i32* %91, i32** %14, align 8
  %92 = load i32, i32* @MODIFY_EXPR, align 4
  %93 = load i32*, i32** @void_type_node, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = call i32* @build2(i32 %92, i32* %93, i32* %94, i32* %95)
  store i32* %96, i32** %19, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = call i32 @append_to_statement_list(i32* %97, i32** %17)
  %99 = load i32*, i32** %7, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %75
  %102 = load i32*, i32** %15, align 8
  %103 = call i32* @TREE_TYPE(i32* %102)
  %104 = call i32* @create_tmp_var(i32* %103, i32* null)
  store i32* %104, i32** %16, align 8
  %105 = load i32, i32* @MODIFY_EXPR, align 4
  %106 = load i32*, i32** @void_type_node, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = call i32* @build2(i32 %105, i32* %106, i32* %107, i32* %108)
  store i32* %109, i32** %19, align 8
  %110 = load i32*, i32** %19, align 8
  %111 = call i32 @append_to_statement_list(i32* %110, i32** %17)
  br label %112

112:                                              ; preds = %101, %75
  %113 = call i32* (...) @create_artificial_label()
  store i32* %113, i32** %18, align 8
  %114 = load i32, i32* @LABEL_EXPR, align 4
  %115 = load i32*, i32** @void_type_node, align 8
  %116 = load i32*, i32** %18, align 8
  %117 = call i32* @build1(i32 %114, i32* %115, i32* %116)
  store i32* %117, i32** %19, align 8
  %118 = load i32*, i32** %19, align 8
  %119 = call i32 @append_to_statement_list(i32* %118, i32** %17)
  %120 = load i32*, i32** %14, align 8
  %121 = call i32* @tree_cons(i32* null, i32* %120, i32* null)
  store i32* %121, i32** %19, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %112
  %125 = load i32*, i32** %16, align 8
  %126 = load i32*, i32** %19, align 8
  %127 = call i32* @tree_cons(i32* null, i32* %125, i32* %126)
  store i32* %127, i32** %19, align 8
  br label %128

128:                                              ; preds = %124, %112
  %129 = load i32*, i32** %7, align 8
  %130 = icmp ne i32* %129, null
  %131 = zext i1 %130 to i32
  %132 = add nsw i32 1, %131
  store i32 %132, i32* %10, align 4
  %133 = load i32*, i32** %8, align 8
  store i32* %133, i32** %9, align 8
  br label %134

134:                                              ; preds = %149, %128
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** @void_list_node, align 8
  %137 = icmp ne i32* %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @TREE_VALUE(i32* %139)
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @TREE_PURPOSE(i32* %141)
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  %146 = call i32* @convert_default_arg(i32 %140, i32 %142, i32* %143, i32 %144)
  %147 = load i32*, i32** %19, align 8
  %148 = call i32* @tree_cons(i32* null, i32* %146, i32* %147)
  store i32* %148, i32** %19, align 8
  br label %149

149:                                              ; preds = %138
  %150 = load i32*, i32** %9, align 8
  %151 = call i32* @TREE_CHAIN(i32* %150)
  store i32* %151, i32** %9, align 8
  br label %134

152:                                              ; preds = %134
  %153 = load i32*, i32** %5, align 8
  %154 = load i32*, i32** %19, align 8
  %155 = call i32 @nreverse(i32* %154)
  %156 = call i32* @build_call(i32* %153, i32 %155)
  store i32* %156, i32** %19, align 8
  %157 = load i32*, i32** %19, align 8
  %158 = call i32 @append_to_statement_list(i32* %157, i32** %17)
  %159 = load i32*, i32** %14, align 8
  %160 = call i32* @TREE_TYPE(i32* %159)
  %161 = load i32*, i32** %11, align 8
  %162 = call i32* @TYPE_SIZE_UNIT(i32* %161)
  %163 = call i32* @fold_convert(i32* %160, i32* %162)
  store i32* %163, i32** %19, align 8
  %164 = load i32, i32* @PLUS_EXPR, align 4
  %165 = load i32*, i32** %14, align 8
  %166 = call i32* @TREE_TYPE(i32* %165)
  %167 = load i32*, i32** %14, align 8
  %168 = load i32*, i32** %19, align 8
  %169 = call i32* @build2(i32 %164, i32* %166, i32* %167, i32* %168)
  store i32* %169, i32** %19, align 8
  %170 = load i32, i32* @MODIFY_EXPR, align 4
  %171 = load i32*, i32** @void_type_node, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = load i32*, i32** %19, align 8
  %174 = call i32* @build2(i32 %170, i32* %171, i32* %172, i32* %173)
  store i32* %174, i32** %19, align 8
  %175 = load i32*, i32** %19, align 8
  %176 = call i32 @append_to_statement_list(i32* %175, i32** %17)
  %177 = load i32*, i32** %7, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %198

179:                                              ; preds = %152
  %180 = load i32*, i32** %16, align 8
  %181 = call i32* @TREE_TYPE(i32* %180)
  %182 = load i32*, i32** %11, align 8
  %183 = call i32* @TYPE_SIZE_UNIT(i32* %182)
  %184 = call i32* @fold_convert(i32* %181, i32* %183)
  store i32* %184, i32** %19, align 8
  %185 = load i32, i32* @PLUS_EXPR, align 4
  %186 = load i32*, i32** %16, align 8
  %187 = call i32* @TREE_TYPE(i32* %186)
  %188 = load i32*, i32** %16, align 8
  %189 = load i32*, i32** %19, align 8
  %190 = call i32* @build2(i32 %185, i32* %187, i32* %188, i32* %189)
  store i32* %190, i32** %19, align 8
  %191 = load i32, i32* @MODIFY_EXPR, align 4
  %192 = load i32*, i32** @void_type_node, align 8
  %193 = load i32*, i32** %16, align 8
  %194 = load i32*, i32** %19, align 8
  %195 = call i32* @build2(i32 %191, i32* %192, i32* %193, i32* %194)
  store i32* %195, i32** %19, align 8
  %196 = load i32*, i32** %19, align 8
  %197 = call i32 @append_to_statement_list(i32* %196, i32** %17)
  br label %198

198:                                              ; preds = %179, %152
  %199 = load i32, i32* @NE_EXPR, align 4
  %200 = load i32*, i32** @boolean_type_node, align 8
  %201 = load i32*, i32** %14, align 8
  %202 = load i32*, i32** %13, align 8
  %203 = call i32* @build2(i32 %199, i32* %200, i32* %201, i32* %202)
  store i32* %203, i32** %19, align 8
  %204 = load i32, i32* @COND_EXPR, align 4
  %205 = load i32*, i32** @void_type_node, align 8
  %206 = load i32*, i32** %19, align 8
  %207 = call i32 @build_and_jump(i32** %18)
  %208 = call i32* @build3(i32 %204, i32* %205, i32* %206, i32 %207, i32* null)
  store i32* %208, i32** %19, align 8
  %209 = load i32*, i32** %19, align 8
  %210 = call i32 @append_to_statement_list(i32* %209, i32** %17)
  %211 = load i32*, i32** %17, align 8
  store i32* %211, i32** %4, align 8
  br label %252

212:                                              ; preds = %34
  %213 = load i32*, i32** %6, align 8
  %214 = call i32* @build_fold_addr_expr(i32* %213)
  %215 = call i32* @tree_cons(i32* null, i32* %214, i32* null)
  store i32* %215, i32** %20, align 8
  %216 = load i32*, i32** %7, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %212
  %219 = load i32*, i32** %7, align 8
  %220 = call i32* @build_fold_addr_expr(i32* %219)
  %221 = load i32*, i32** %20, align 8
  %222 = call i32* @tree_cons(i32* null, i32* %220, i32* %221)
  store i32* %222, i32** %20, align 8
  br label %223

223:                                              ; preds = %218, %212
  %224 = load i32*, i32** %7, align 8
  %225 = icmp ne i32* %224, null
  %226 = zext i1 %225 to i32
  %227 = add nsw i32 1, %226
  store i32 %227, i32* %10, align 4
  %228 = load i32*, i32** %8, align 8
  store i32* %228, i32** %9, align 8
  br label %229

229:                                              ; preds = %244, %223
  %230 = load i32*, i32** %9, align 8
  %231 = load i32*, i32** @void_list_node, align 8
  %232 = icmp ne i32* %230, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %229
  %234 = load i32*, i32** %9, align 8
  %235 = call i32 @TREE_VALUE(i32* %234)
  %236 = load i32*, i32** %9, align 8
  %237 = call i32 @TREE_PURPOSE(i32* %236)
  %238 = load i32*, i32** %5, align 8
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  %241 = call i32* @convert_default_arg(i32 %235, i32 %237, i32* %238, i32 %239)
  %242 = load i32*, i32** %20, align 8
  %243 = call i32* @tree_cons(i32* null, i32* %241, i32* %242)
  store i32* %243, i32** %20, align 8
  br label %244

244:                                              ; preds = %233
  %245 = load i32*, i32** %9, align 8
  %246 = call i32* @TREE_CHAIN(i32* %245)
  store i32* %246, i32** %9, align 8
  br label %229

247:                                              ; preds = %229
  %248 = load i32*, i32** %5, align 8
  %249 = load i32*, i32** %20, align 8
  %250 = call i32 @nreverse(i32* %249)
  %251 = call i32* @build_call(i32* %248, i32 %250)
  store i32* %251, i32** %4, align 8
  br label %252

252:                                              ; preds = %247, %198, %23
  %253 = load i32*, i32** %4, align 8
  ret i32* %253
}

declare dso_local i32* @TREE_CHAIN(i32*) #1

declare dso_local i32* @TYPE_ARG_TYPES(i32*) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @build4(i32, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32* @build_fold_addr_expr(i32*) #1

declare dso_local i32* @TYPE_SIZE_UNIT(i32*) #1

declare dso_local i32* @fold_convert(i32*, i32*) #1

declare dso_local i32* @build2(i32, i32*, i32*, i32*) #1

declare dso_local i32* @create_tmp_var(i32*, i32*) #1

declare dso_local i32 @append_to_statement_list(i32*, i32**) #1

declare dso_local i32* @create_artificial_label(...) #1

declare dso_local i32* @build1(i32, i32*, i32*) #1

declare dso_local i32* @tree_cons(i32*, i32*, i32*) #1

declare dso_local i32* @convert_default_arg(i32, i32, i32*, i32) #1

declare dso_local i32 @TREE_VALUE(i32*) #1

declare dso_local i32 @TREE_PURPOSE(i32*) #1

declare dso_local i32* @build_call(i32*, i32) #1

declare dso_local i32 @nreverse(i32*) #1

declare dso_local i32* @build3(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @build_and_jump(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
