; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_make_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_make_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_57__ = type { %struct.TYPE_56__ }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_54__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { %struct.TYPE_57__* (i32, i32)*, %struct.TYPE_57__* (%struct.TYPE_57__*)*, %struct.TYPE_57__* (%struct.TYPE_57__*)* }

@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global %struct.TYPE_57__* null, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_54__ zeroinitializer, align 8
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@REAL_TYPE = common dso_local global i32 0, align 4
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@VAR_DECL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_57__*, align 8
  %4 = alloca %struct.TYPE_57__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_57__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_57__*, align 8
  %11 = alloca %struct.TYPE_57__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_57__* %0, %struct.TYPE_57__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GET_CODE(i32 %14)
  switch i32 %15, label %251 [
    i32 139, label %16
    i32 140, label %38
    i32 138, label %59
    i32 132, label %87
    i32 135, label %99
    i32 133, label %111
    i32 134, label %119
    i32 143, label %131
    i32 136, label %143
    i32 142, label %160
    i32 137, label %177
    i32 129, label %202
    i32 131, label %219
    i32 128, label %219
    i32 141, label %235
    i32 130, label %240
  ]

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @INTVAL(i32 %17)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %22 = call i32 @TYPE_UNSIGNED(%struct.TYPE_57__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %26 = call i32 @TYPE_MODE(%struct.TYPE_57__* %25)
  %27 = call i32 @GET_MODE_BITSIZE(i32 %26)
  %28 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %24, %20
  store i32 -1, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %24, %16
  %32 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @INTVAL(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.TYPE_57__* @build_int_cst_wide(%struct.TYPE_57__* %32, i32 %34, i32 %35)
  store %struct.TYPE_57__* %36, %struct.TYPE_57__** %6, align 8
  %37 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  store %struct.TYPE_57__* %37, %struct.TYPE_57__** %3, align 8
  br label %270

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @GET_MODE(i32 %39)
  %41 = load i32, i32* @VOIDmode, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @CONST_DOUBLE_LOW(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @CONST_DOUBLE_HIGH(i32 %47)
  %49 = call %struct.TYPE_57__* @build_int_cst_wide(%struct.TYPE_57__* %44, i32 %46, i32 %48)
  store %struct.TYPE_57__* %49, %struct.TYPE_57__** %6, align 8
  br label %57

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %51, i32 %52)
  %54 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call %struct.TYPE_57__* @build_real(%struct.TYPE_57__* %54, i32 %55)
  store %struct.TYPE_57__* %56, %struct.TYPE_57__** %6, align 8
  br label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  store %struct.TYPE_57__* %58, %struct.TYPE_57__** %3, align 8
  br label %270

59:                                               ; preds = %2
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @CONST_VECTOR_NUNITS(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %63 = call %struct.TYPE_57__* @TREE_TYPE(%struct.TYPE_57__* %62)
  store %struct.TYPE_57__* %63, %struct.TYPE_57__** %10, align 8
  %64 = load %struct.TYPE_57__*, %struct.TYPE_57__** @NULL_TREE, align 8
  store %struct.TYPE_57__* %64, %struct.TYPE_57__** %11, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %80, %59
  %68 = load i32, i32* %12, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @CONST_VECTOR_ELT(i32 %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_57__*, %struct.TYPE_57__** @NULL_TREE, align 8
  %75 = load %struct.TYPE_57__*, %struct.TYPE_57__** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %75, i32 %76)
  %78 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %79 = call %struct.TYPE_57__* @tree_cons(%struct.TYPE_57__* %74, %struct.TYPE_57__* %77, %struct.TYPE_57__* %78)
  store %struct.TYPE_57__* %79, %struct.TYPE_57__** %11, align 8
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %12, align 4
  br label %67

83:                                               ; preds = %67
  %84 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %85 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %86 = call %struct.TYPE_57__* @build_vector(%struct.TYPE_57__* %84, %struct.TYPE_57__* %85)
  store %struct.TYPE_57__* %86, %struct.TYPE_57__** %3, align 8
  br label %270

87:                                               ; preds = %2
  %88 = load i32, i32* @PLUS_EXPR, align 4
  %89 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %90 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @XEXP(i32 %91, i32 0)
  %93 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %90, i32 %92)
  %94 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @XEXP(i32 %95, i32 1)
  %97 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %94, i32 %96)
  %98 = call %struct.TYPE_57__* @fold_build2(i32 %88, %struct.TYPE_57__* %89, %struct.TYPE_57__* %93, %struct.TYPE_57__* %97)
  store %struct.TYPE_57__* %98, %struct.TYPE_57__** %3, align 8
  br label %270

99:                                               ; preds = %2
  %100 = load i32, i32* @MINUS_EXPR, align 4
  %101 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %102 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @XEXP(i32 %103, i32 0)
  %105 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %102, i32 %104)
  %106 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @XEXP(i32 %107, i32 1)
  %109 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %106, i32 %108)
  %110 = call %struct.TYPE_57__* @fold_build2(i32 %100, %struct.TYPE_57__* %101, %struct.TYPE_57__* %105, %struct.TYPE_57__* %109)
  store %struct.TYPE_57__* %110, %struct.TYPE_57__** %3, align 8
  br label %270

111:                                              ; preds = %2
  %112 = load i32, i32* @NEGATE_EXPR, align 4
  %113 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %114 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @XEXP(i32 %115, i32 0)
  %117 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %114, i32 %116)
  %118 = call %struct.TYPE_57__* @fold_build1(i32 %112, %struct.TYPE_57__* %113, %struct.TYPE_57__* %117)
  store %struct.TYPE_57__* %118, %struct.TYPE_57__** %3, align 8
  br label %270

119:                                              ; preds = %2
  %120 = load i32, i32* @MULT_EXPR, align 4
  %121 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %122 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @XEXP(i32 %123, i32 0)
  %125 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %122, i32 %124)
  %126 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @XEXP(i32 %127, i32 1)
  %129 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %126, i32 %128)
  %130 = call %struct.TYPE_57__* @fold_build2(i32 %120, %struct.TYPE_57__* %121, %struct.TYPE_57__* %125, %struct.TYPE_57__* %129)
  store %struct.TYPE_57__* %130, %struct.TYPE_57__** %3, align 8
  br label %270

131:                                              ; preds = %2
  %132 = load i32, i32* @LSHIFT_EXPR, align 4
  %133 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %134 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @XEXP(i32 %135, i32 0)
  %137 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %134, i32 %136)
  %138 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @XEXP(i32 %139, i32 1)
  %141 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %138, i32 %140)
  %142 = call %struct.TYPE_57__* @fold_build2(i32 %132, %struct.TYPE_57__* %133, %struct.TYPE_57__* %137, %struct.TYPE_57__* %141)
  store %struct.TYPE_57__* %142, %struct.TYPE_57__** %3, align 8
  br label %270

143:                                              ; preds = %2
  %144 = load %struct.TYPE_57__* (%struct.TYPE_57__*)*, %struct.TYPE_57__* (%struct.TYPE_57__*)** getelementptr inbounds (%struct.TYPE_54__, %struct.TYPE_54__* @lang_hooks, i32 0, i32 0, i32 1), align 8
  %145 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %146 = call %struct.TYPE_57__* %144(%struct.TYPE_57__* %145)
  store %struct.TYPE_57__* %146, %struct.TYPE_57__** %6, align 8
  %147 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %148 = load i32, i32* @RSHIFT_EXPR, align 4
  %149 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %150 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @XEXP(i32 %151, i32 0)
  %153 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %150, i32 %152)
  %154 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @XEXP(i32 %155, i32 1)
  %157 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %154, i32 %156)
  %158 = call %struct.TYPE_57__* @build2(i32 %148, %struct.TYPE_57__* %149, %struct.TYPE_57__* %153, %struct.TYPE_57__* %157)
  %159 = call %struct.TYPE_57__* @fold_convert(%struct.TYPE_57__* %147, %struct.TYPE_57__* %158)
  store %struct.TYPE_57__* %159, %struct.TYPE_57__** %3, align 8
  br label %270

160:                                              ; preds = %2
  %161 = load %struct.TYPE_57__* (%struct.TYPE_57__*)*, %struct.TYPE_57__* (%struct.TYPE_57__*)** getelementptr inbounds (%struct.TYPE_54__, %struct.TYPE_54__* @lang_hooks, i32 0, i32 0, i32 2), align 8
  %162 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %163 = call %struct.TYPE_57__* %161(%struct.TYPE_57__* %162)
  store %struct.TYPE_57__* %163, %struct.TYPE_57__** %6, align 8
  %164 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %165 = load i32, i32* @RSHIFT_EXPR, align 4
  %166 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %167 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @XEXP(i32 %168, i32 0)
  %170 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %167, i32 %169)
  %171 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @XEXP(i32 %172, i32 1)
  %174 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %171, i32 %173)
  %175 = call %struct.TYPE_57__* @build2(i32 %165, %struct.TYPE_57__* %166, %struct.TYPE_57__* %170, %struct.TYPE_57__* %174)
  %176 = call %struct.TYPE_57__* @fold_convert(%struct.TYPE_57__* %164, %struct.TYPE_57__* %175)
  store %struct.TYPE_57__* %176, %struct.TYPE_57__** %3, align 8
  br label %270

177:                                              ; preds = %2
  %178 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %179 = call i32 @TREE_CODE(%struct.TYPE_57__* %178)
  %180 = load i32, i32* @REAL_TYPE, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load %struct.TYPE_57__* (%struct.TYPE_57__*)*, %struct.TYPE_57__* (%struct.TYPE_57__*)** getelementptr inbounds (%struct.TYPE_54__, %struct.TYPE_54__* @lang_hooks, i32 0, i32 0, i32 2), align 8
  %184 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %185 = call %struct.TYPE_57__* %183(%struct.TYPE_57__* %184)
  store %struct.TYPE_57__* %185, %struct.TYPE_57__** %6, align 8
  br label %188

186:                                              ; preds = %177
  %187 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  store %struct.TYPE_57__* %187, %struct.TYPE_57__** %6, align 8
  br label %188

188:                                              ; preds = %186, %182
  %189 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %190 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %191 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %192 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @XEXP(i32 %193, i32 0)
  %195 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %192, i32 %194)
  %196 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @XEXP(i32 %197, i32 1)
  %199 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %196, i32 %198)
  %200 = call %struct.TYPE_57__* @build2(i32 %190, %struct.TYPE_57__* %191, %struct.TYPE_57__* %195, %struct.TYPE_57__* %199)
  %201 = call %struct.TYPE_57__* @fold_convert(%struct.TYPE_57__* %189, %struct.TYPE_57__* %200)
  store %struct.TYPE_57__* %201, %struct.TYPE_57__** %3, align 8
  br label %270

202:                                              ; preds = %2
  %203 = load %struct.TYPE_57__* (%struct.TYPE_57__*)*, %struct.TYPE_57__* (%struct.TYPE_57__*)** getelementptr inbounds (%struct.TYPE_54__, %struct.TYPE_54__* @lang_hooks, i32 0, i32 0, i32 1), align 8
  %204 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %205 = call %struct.TYPE_57__* %203(%struct.TYPE_57__* %204)
  store %struct.TYPE_57__* %205, %struct.TYPE_57__** %6, align 8
  %206 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %207 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %208 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %209 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @XEXP(i32 %210, i32 0)
  %212 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %209, i32 %211)
  %213 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @XEXP(i32 %214, i32 1)
  %216 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %213, i32 %215)
  %217 = call %struct.TYPE_57__* @build2(i32 %207, %struct.TYPE_57__* %208, %struct.TYPE_57__* %212, %struct.TYPE_57__* %216)
  %218 = call %struct.TYPE_57__* @fold_convert(%struct.TYPE_57__* %206, %struct.TYPE_57__* %217)
  store %struct.TYPE_57__* %218, %struct.TYPE_57__** %3, align 8
  br label %270

219:                                              ; preds = %2, %2
  %220 = load %struct.TYPE_57__* (i32, i32)*, %struct.TYPE_57__* (i32, i32)** getelementptr inbounds (%struct.TYPE_54__, %struct.TYPE_54__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @XEXP(i32 %221, i32 0)
  %223 = call i32 @GET_MODE(i32 %222)
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @GET_CODE(i32 %224)
  %226 = icmp eq i32 %225, 128
  %227 = zext i1 %226 to i32
  %228 = call %struct.TYPE_57__* %220(i32 %223, i32 %227)
  store %struct.TYPE_57__* %228, %struct.TYPE_57__** %6, align 8
  %229 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %230 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %231 = load i32, i32* %5, align 4
  %232 = call i32 @XEXP(i32 %231, i32 0)
  %233 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %230, i32 %232)
  %234 = call %struct.TYPE_57__* @fold_convert(%struct.TYPE_57__* %229, %struct.TYPE_57__* %233)
  store %struct.TYPE_57__* %234, %struct.TYPE_57__** %3, align 8
  br label %270

235:                                              ; preds = %2
  %236 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %237 = load i32, i32* %5, align 4
  %238 = call i32 @XEXP(i32 %237, i32 0)
  %239 = call %struct.TYPE_57__* @make_tree(%struct.TYPE_57__* %236, i32 %238)
  store %struct.TYPE_57__* %239, %struct.TYPE_57__** %3, align 8
  br label %270

240:                                              ; preds = %2
  %241 = load i32, i32* %5, align 4
  %242 = call %struct.TYPE_57__* @SYMBOL_REF_DECL(i32 %241)
  store %struct.TYPE_57__* %242, %struct.TYPE_57__** %6, align 8
  %243 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %244 = icmp ne %struct.TYPE_57__* %243, null
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %247 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %248 = call %struct.TYPE_57__* @build_fold_addr_expr(%struct.TYPE_57__* %247)
  %249 = call %struct.TYPE_57__* @fold_convert(%struct.TYPE_57__* %246, %struct.TYPE_57__* %248)
  store %struct.TYPE_57__* %249, %struct.TYPE_57__** %3, align 8
  br label %270

250:                                              ; preds = %240
  br label %251

251:                                              ; preds = %2, %250
  %252 = load i32, i32* @VAR_DECL, align 4
  %253 = load %struct.TYPE_57__*, %struct.TYPE_57__** @NULL_TREE, align 8
  %254 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %255 = call %struct.TYPE_57__* @build_decl(i32 %252, %struct.TYPE_57__* %253, %struct.TYPE_57__* %254)
  store %struct.TYPE_57__* %255, %struct.TYPE_57__** %6, align 8
  %256 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %257 = call i32 @POINTER_TYPE_P(%struct.TYPE_57__* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %251
  %260 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %261 = call i32 @TYPE_MODE(%struct.TYPE_57__* %260)
  %262 = load i32, i32* %5, align 4
  %263 = call i32 @convert_memory_address(i32 %261, i32 %262)
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %259, %251
  %265 = load i32, i32* %5, align 4
  %266 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %267, i32 0, i32 0
  store i32 %265, i32* %268, align 4
  %269 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  store %struct.TYPE_57__* %269, %struct.TYPE_57__** %3, align 8
  br label %270

270:                                              ; preds = %264, %245, %235, %219, %202, %188, %160, %143, %131, %119, %111, %99, %87, %83, %57, %31
  %271 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  ret %struct.TYPE_57__* %271
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @TYPE_UNSIGNED(%struct.TYPE_57__*) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @TYPE_MODE(%struct.TYPE_57__*) #1

declare dso_local %struct.TYPE_57__* @build_int_cst_wide(%struct.TYPE_57__*, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @CONST_DOUBLE_LOW(i32) #1

declare dso_local i32 @CONST_DOUBLE_HIGH(i32) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i32) #1

declare dso_local %struct.TYPE_57__* @build_real(%struct.TYPE_57__*, i32) #1

declare dso_local i32 @CONST_VECTOR_NUNITS(i32) #1

declare dso_local %struct.TYPE_57__* @TREE_TYPE(%struct.TYPE_57__*) #1

declare dso_local i32 @CONST_VECTOR_ELT(i32, i32) #1

declare dso_local %struct.TYPE_57__* @tree_cons(%struct.TYPE_57__*, %struct.TYPE_57__*, %struct.TYPE_57__*) #1

declare dso_local %struct.TYPE_57__* @build_vector(%struct.TYPE_57__*, %struct.TYPE_57__*) #1

declare dso_local %struct.TYPE_57__* @fold_build2(i32, %struct.TYPE_57__*, %struct.TYPE_57__*, %struct.TYPE_57__*) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local %struct.TYPE_57__* @fold_build1(i32, %struct.TYPE_57__*, %struct.TYPE_57__*) #1

declare dso_local %struct.TYPE_57__* @fold_convert(%struct.TYPE_57__*, %struct.TYPE_57__*) #1

declare dso_local %struct.TYPE_57__* @build2(i32, %struct.TYPE_57__*, %struct.TYPE_57__*, %struct.TYPE_57__*) #1

declare dso_local i32 @TREE_CODE(%struct.TYPE_57__*) #1

declare dso_local %struct.TYPE_57__* @SYMBOL_REF_DECL(i32) #1

declare dso_local %struct.TYPE_57__* @build_fold_addr_expr(%struct.TYPE_57__*) #1

declare dso_local %struct.TYPE_57__* @build_decl(i32, %struct.TYPE_57__*, %struct.TYPE_57__*) #1

declare dso_local i32 @POINTER_TYPE_P(%struct.TYPE_57__*) #1

declare dso_local i32 @convert_memory_address(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
