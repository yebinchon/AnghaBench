; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_unary_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_unary_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i8*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PREINCREMENT_EXPR = common dso_local global i32 0, align 4
@PREDECREMENT_EXPR = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unary *\00", align 1
@ERROR_MARK = common dso_local global i8* null, align 8
@in_system_header = common dso_local global i32 0, align 4
@OPT_Wtraditional = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"traditional C rejects the unary plus operator\00", align 1
@CONVERT_EXPR = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4
@BIT_NOT_EXPR = common dso_local global i32 0, align 4
@TRUTH_NOT_EXPR = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@REALPART_EXPR = common dso_local global i32 0, align 4
@IMAGPART_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i32 } (i32*)* @c_parser_unary_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i32 } @c_parser_unary_expression(i32* %0) #0 {
  %2 = alloca %struct.c_expr, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = alloca %struct.c_expr, align 8
  %10 = alloca %struct.c_expr, align 8
  %11 = alloca %struct.c_expr, align 8
  %12 = alloca %struct.c_expr, align 8
  %13 = alloca %struct.c_expr, align 8
  %14 = alloca %struct.c_expr, align 8
  %15 = alloca %struct.c_expr, align 8
  %16 = alloca %struct.c_expr, align 8
  %17 = alloca %struct.c_expr, align 8
  %18 = alloca %struct.c_expr, align 8
  %19 = alloca %struct.c_expr, align 8
  %20 = alloca %struct.c_expr, align 8
  %21 = alloca %struct.c_expr, align 8
  %22 = alloca %struct.c_expr, align 8
  %23 = alloca %struct.c_expr, align 8
  %24 = alloca %struct.c_expr, align 8
  %25 = alloca %struct.c_expr, align 8
  %26 = alloca %struct.c_expr, align 8
  store i32* %0, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %463 [
    i32 133, label %31
    i32 137, label %68
    i32 142, label %105
    i32 136, label %127
    i32 134, label %160
    i32 138, label %206
    i32 140, label %243
    i32 135, label %280
    i32 141, label %317
    i32 139, label %343
  ]

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @c_parser_consume_token(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call { i8*, i32 } @c_parser_cast_expression(i32* %34, i32* null)
  %36 = bitcast %struct.c_expr* %7 to { i8*, i32 }*
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %36, i32 0, i32 0
  %38 = extractvalue { i8*, i32 } %35, 0
  store i8* %38, i8** %37, align 8
  %39 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %36, i32 0, i32 1
  %40 = extractvalue { i8*, i32 } %35, 1
  store i32 %40, i32* %39, align 8
  %41 = bitcast %struct.c_expr* %6 to i8*
  %42 = bitcast %struct.c_expr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %44 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %43, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call { i8*, i32 } @default_function_array_conversion(i8* %45, i32 %47)
  %49 = bitcast %struct.c_expr* %8 to { i8*, i32 }*
  %50 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %49, i32 0, i32 0
  %51 = extractvalue { i8*, i32 } %48, 0
  store i8* %51, i8** %50, align 8
  %52 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %49, i32 0, i32 1
  %53 = extractvalue { i8*, i32 } %48, 1
  store i32 %53, i32* %52, align 8
  %54 = bitcast %struct.c_expr* %6 to i8*
  %55 = bitcast %struct.c_expr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = load i32, i32* @PREINCREMENT_EXPR, align 4
  %57 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %58 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %57, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call { i8*, i32 } @parser_build_unary_op(i32 %56, i8* %59, i32 %61)
  %63 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %64 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %63, i32 0, i32 0
  %65 = extractvalue { i8*, i32 } %62, 0
  store i8* %65, i8** %64, align 8
  %66 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %63, i32 0, i32 1
  %67 = extractvalue { i8*, i32 } %62, 1
  store i32 %67, i32* %66, align 8
  br label %471

68:                                               ; preds = %1
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @c_parser_consume_token(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call { i8*, i32 } @c_parser_cast_expression(i32* %71, i32* null)
  %73 = bitcast %struct.c_expr* %9 to { i8*, i32 }*
  %74 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %73, i32 0, i32 0
  %75 = extractvalue { i8*, i32 } %72, 0
  store i8* %75, i8** %74, align 8
  %76 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %73, i32 0, i32 1
  %77 = extractvalue { i8*, i32 } %72, 1
  store i32 %77, i32* %76, align 8
  %78 = bitcast %struct.c_expr* %6 to i8*
  %79 = bitcast %struct.c_expr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %81 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %80, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call { i8*, i32 } @default_function_array_conversion(i8* %82, i32 %84)
  %86 = bitcast %struct.c_expr* %10 to { i8*, i32 }*
  %87 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %86, i32 0, i32 0
  %88 = extractvalue { i8*, i32 } %85, 0
  store i8* %88, i8** %87, align 8
  %89 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %86, i32 0, i32 1
  %90 = extractvalue { i8*, i32 } %85, 1
  store i32 %90, i32* %89, align 8
  %91 = bitcast %struct.c_expr* %6 to i8*
  %92 = bitcast %struct.c_expr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  %93 = load i32, i32* @PREDECREMENT_EXPR, align 4
  %94 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %95 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %94, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call { i8*, i32 } @parser_build_unary_op(i32 %93, i8* %96, i32 %98)
  %100 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %101 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %100, i32 0, i32 0
  %102 = extractvalue { i8*, i32 } %99, 0
  store i8* %102, i8** %101, align 8
  %103 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %100, i32 0, i32 1
  %104 = extractvalue { i8*, i32 } %99, 1
  store i32 %104, i32* %103, align 8
  br label %471

105:                                              ; preds = %1
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @c_parser_consume_token(i32* %106)
  %108 = load i32, i32* @ADDR_EXPR, align 4
  %109 = load i32*, i32** %3, align 8
  %110 = call { i8*, i32 } @c_parser_cast_expression(i32* %109, i32* null)
  %111 = bitcast %struct.c_expr* %11 to { i8*, i32 }*
  %112 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %111, i32 0, i32 0
  %113 = extractvalue { i8*, i32 } %110, 0
  store i8* %113, i8** %112, align 8
  %114 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %111, i32 0, i32 1
  %115 = extractvalue { i8*, i32 } %110, 1
  store i32 %115, i32* %114, align 8
  %116 = bitcast %struct.c_expr* %11 to { i8*, i32 }*
  %117 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %116, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call { i8*, i32 } @parser_build_unary_op(i32 %108, i8* %118, i32 %120)
  %122 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %123 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %122, i32 0, i32 0
  %124 = extractvalue { i8*, i32 } %121, 0
  store i8* %124, i8** %123, align 8
  %125 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %122, i32 0, i32 1
  %126 = extractvalue { i8*, i32 } %121, 1
  store i32 %126, i32* %125, align 8
  br label %471

127:                                              ; preds = %1
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @c_parser_consume_token(i32* %128)
  %130 = load i32*, i32** %3, align 8
  %131 = call { i8*, i32 } @c_parser_cast_expression(i32* %130, i32* null)
  %132 = bitcast %struct.c_expr* %12 to { i8*, i32 }*
  %133 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %132, i32 0, i32 0
  %134 = extractvalue { i8*, i32 } %131, 0
  store i8* %134, i8** %133, align 8
  %135 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %132, i32 0, i32 1
  %136 = extractvalue { i8*, i32 } %131, 1
  store i32 %136, i32* %135, align 8
  %137 = bitcast %struct.c_expr* %6 to i8*
  %138 = bitcast %struct.c_expr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 16, i1 false)
  %139 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %140 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %139, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call { i8*, i32 } @default_function_array_conversion(i8* %141, i32 %143)
  %145 = bitcast %struct.c_expr* %13 to { i8*, i32 }*
  %146 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %145, i32 0, i32 0
  %147 = extractvalue { i8*, i32 } %144, 0
  store i8* %147, i8** %146, align 8
  %148 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %145, i32 0, i32 1
  %149 = extractvalue { i8*, i32 } %144, 1
  store i32 %149, i32* %148, align 8
  %150 = bitcast %struct.c_expr* %6 to i8*
  %151 = bitcast %struct.c_expr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 16, i1 false)
  %152 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @build_indirect_ref(i32 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %155 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i32 %154, i32* %155, align 8
  %156 = load i8*, i8** @ERROR_MARK, align 8
  %157 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %156, i8** %157, align 8
  %158 = bitcast %struct.c_expr* %2 to i8*
  %159 = bitcast %struct.c_expr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 16, i1 false)
  br label %471

160:                                              ; preds = %1
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @c_parser_consume_token(i32* %161)
  %163 = call i32 (...) @c_dialect_objc()
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %160
  %166 = load i32, i32* @in_system_header, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* @OPT_Wtraditional, align 4
  %170 = call i32 @warning(i32 %169, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %165, %160
  %172 = load i32*, i32** %3, align 8
  %173 = call { i8*, i32 } @c_parser_cast_expression(i32* %172, i32* null)
  %174 = bitcast %struct.c_expr* %14 to { i8*, i32 }*
  %175 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %174, i32 0, i32 0
  %176 = extractvalue { i8*, i32 } %173, 0
  store i8* %176, i8** %175, align 8
  %177 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %174, i32 0, i32 1
  %178 = extractvalue { i8*, i32 } %173, 1
  store i32 %178, i32* %177, align 8
  %179 = bitcast %struct.c_expr* %6 to i8*
  %180 = bitcast %struct.c_expr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 16, i1 false)
  %181 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %182 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %181, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call { i8*, i32 } @default_function_array_conversion(i8* %183, i32 %185)
  %187 = bitcast %struct.c_expr* %15 to { i8*, i32 }*
  %188 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %187, i32 0, i32 0
  %189 = extractvalue { i8*, i32 } %186, 0
  store i8* %189, i8** %188, align 8
  %190 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %187, i32 0, i32 1
  %191 = extractvalue { i8*, i32 } %186, 1
  store i32 %191, i32* %190, align 8
  %192 = bitcast %struct.c_expr* %6 to i8*
  %193 = bitcast %struct.c_expr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 %193, i64 16, i1 false)
  %194 = load i32, i32* @CONVERT_EXPR, align 4
  %195 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %196 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %195, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call { i8*, i32 } @parser_build_unary_op(i32 %194, i8* %197, i32 %199)
  %201 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %202 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %201, i32 0, i32 0
  %203 = extractvalue { i8*, i32 } %200, 0
  store i8* %203, i8** %202, align 8
  %204 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %201, i32 0, i32 1
  %205 = extractvalue { i8*, i32 } %200, 1
  store i32 %205, i32* %204, align 8
  br label %471

206:                                              ; preds = %1
  %207 = load i32*, i32** %3, align 8
  %208 = call i32 @c_parser_consume_token(i32* %207)
  %209 = load i32*, i32** %3, align 8
  %210 = call { i8*, i32 } @c_parser_cast_expression(i32* %209, i32* null)
  %211 = bitcast %struct.c_expr* %16 to { i8*, i32 }*
  %212 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %211, i32 0, i32 0
  %213 = extractvalue { i8*, i32 } %210, 0
  store i8* %213, i8** %212, align 8
  %214 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %211, i32 0, i32 1
  %215 = extractvalue { i8*, i32 } %210, 1
  store i32 %215, i32* %214, align 8
  %216 = bitcast %struct.c_expr* %6 to i8*
  %217 = bitcast %struct.c_expr* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %216, i8* align 8 %217, i64 16, i1 false)
  %218 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %219 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %218, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call { i8*, i32 } @default_function_array_conversion(i8* %220, i32 %222)
  %224 = bitcast %struct.c_expr* %17 to { i8*, i32 }*
  %225 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %224, i32 0, i32 0
  %226 = extractvalue { i8*, i32 } %223, 0
  store i8* %226, i8** %225, align 8
  %227 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %224, i32 0, i32 1
  %228 = extractvalue { i8*, i32 } %223, 1
  store i32 %228, i32* %227, align 8
  %229 = bitcast %struct.c_expr* %6 to i8*
  %230 = bitcast %struct.c_expr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %229, i8* align 8 %230, i64 16, i1 false)
  %231 = load i32, i32* @NEGATE_EXPR, align 4
  %232 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %233 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %232, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call { i8*, i32 } @parser_build_unary_op(i32 %231, i8* %234, i32 %236)
  %238 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %239 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %238, i32 0, i32 0
  %240 = extractvalue { i8*, i32 } %237, 0
  store i8* %240, i8** %239, align 8
  %241 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %238, i32 0, i32 1
  %242 = extractvalue { i8*, i32 } %237, 1
  store i32 %242, i32* %241, align 8
  br label %471

243:                                              ; preds = %1
  %244 = load i32*, i32** %3, align 8
  %245 = call i32 @c_parser_consume_token(i32* %244)
  %246 = load i32*, i32** %3, align 8
  %247 = call { i8*, i32 } @c_parser_cast_expression(i32* %246, i32* null)
  %248 = bitcast %struct.c_expr* %18 to { i8*, i32 }*
  %249 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %248, i32 0, i32 0
  %250 = extractvalue { i8*, i32 } %247, 0
  store i8* %250, i8** %249, align 8
  %251 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %248, i32 0, i32 1
  %252 = extractvalue { i8*, i32 } %247, 1
  store i32 %252, i32* %251, align 8
  %253 = bitcast %struct.c_expr* %6 to i8*
  %254 = bitcast %struct.c_expr* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 8 %254, i64 16, i1 false)
  %255 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %256 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %255, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = call { i8*, i32 } @default_function_array_conversion(i8* %257, i32 %259)
  %261 = bitcast %struct.c_expr* %19 to { i8*, i32 }*
  %262 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %261, i32 0, i32 0
  %263 = extractvalue { i8*, i32 } %260, 0
  store i8* %263, i8** %262, align 8
  %264 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %261, i32 0, i32 1
  %265 = extractvalue { i8*, i32 } %260, 1
  store i32 %265, i32* %264, align 8
  %266 = bitcast %struct.c_expr* %6 to i8*
  %267 = bitcast %struct.c_expr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %266, i8* align 8 %267, i64 16, i1 false)
  %268 = load i32, i32* @BIT_NOT_EXPR, align 4
  %269 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %270 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %269, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = call { i8*, i32 } @parser_build_unary_op(i32 %268, i8* %271, i32 %273)
  %275 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %276 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %275, i32 0, i32 0
  %277 = extractvalue { i8*, i32 } %274, 0
  store i8* %277, i8** %276, align 8
  %278 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %275, i32 0, i32 1
  %279 = extractvalue { i8*, i32 } %274, 1
  store i32 %279, i32* %278, align 8
  br label %471

280:                                              ; preds = %1
  %281 = load i32*, i32** %3, align 8
  %282 = call i32 @c_parser_consume_token(i32* %281)
  %283 = load i32*, i32** %3, align 8
  %284 = call { i8*, i32 } @c_parser_cast_expression(i32* %283, i32* null)
  %285 = bitcast %struct.c_expr* %20 to { i8*, i32 }*
  %286 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %285, i32 0, i32 0
  %287 = extractvalue { i8*, i32 } %284, 0
  store i8* %287, i8** %286, align 8
  %288 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %285, i32 0, i32 1
  %289 = extractvalue { i8*, i32 } %284, 1
  store i32 %289, i32* %288, align 8
  %290 = bitcast %struct.c_expr* %6 to i8*
  %291 = bitcast %struct.c_expr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %290, i8* align 8 %291, i64 16, i1 false)
  %292 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %293 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %292, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = call { i8*, i32 } @default_function_array_conversion(i8* %294, i32 %296)
  %298 = bitcast %struct.c_expr* %21 to { i8*, i32 }*
  %299 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %298, i32 0, i32 0
  %300 = extractvalue { i8*, i32 } %297, 0
  store i8* %300, i8** %299, align 8
  %301 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %298, i32 0, i32 1
  %302 = extractvalue { i8*, i32 } %297, 1
  store i32 %302, i32* %301, align 8
  %303 = bitcast %struct.c_expr* %6 to i8*
  %304 = bitcast %struct.c_expr* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %303, i8* align 8 %304, i64 16, i1 false)
  %305 = load i32, i32* @TRUTH_NOT_EXPR, align 4
  %306 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %307 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %306, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = call { i8*, i32 } @parser_build_unary_op(i32 %305, i8* %308, i32 %310)
  %312 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %313 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %312, i32 0, i32 0
  %314 = extractvalue { i8*, i32 } %311, 0
  store i8* %314, i8** %313, align 8
  %315 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %312, i32 0, i32 1
  %316 = extractvalue { i8*, i32 } %311, 1
  store i32 %316, i32* %315, align 8
  br label %471

317:                                              ; preds = %1
  %318 = load i32*, i32** %3, align 8
  %319 = call i32 @c_parser_consume_token(i32* %318)
  %320 = load i32*, i32** %3, align 8
  %321 = load i32, i32* @CPP_NAME, align 4
  %322 = call i32 @c_parser_next_token_is(i32* %320, i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %317
  %325 = load i32*, i32** %3, align 8
  %326 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %325)
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @finish_label_address_expr(i32 %328)
  %330 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i32 %329, i32* %330, align 8
  %331 = load i32*, i32** %3, align 8
  %332 = call i32 @c_parser_consume_token(i32* %331)
  br label %338

333:                                              ; preds = %317
  %334 = load i32*, i32** %3, align 8
  %335 = call i32 @c_parser_error(i32* %334, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %336 = load i32, i32* @error_mark_node, align 4
  %337 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i32 %336, i32* %337, align 8
  br label %338

338:                                              ; preds = %333, %324
  %339 = load i8*, i8** @ERROR_MARK, align 8
  %340 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %339, i8** %340, align 8
  %341 = bitcast %struct.c_expr* %2 to i8*
  %342 = bitcast %struct.c_expr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %341, i8* align 8 %342, i64 16, i1 false)
  br label %471

343:                                              ; preds = %1
  %344 = load i32*, i32** %3, align 8
  %345 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %344)
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  switch i32 %347, label %455 [
    i32 128, label %348
    i32 132, label %356
    i32 131, label %364
    i32 129, label %381
    i32 130, label %418
  ]

348:                                              ; preds = %343
  %349 = load i32*, i32** %3, align 8
  %350 = call { i8*, i32 } @c_parser_sizeof_expression(i32* %349)
  %351 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %352 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %351, i32 0, i32 0
  %353 = extractvalue { i8*, i32 } %350, 0
  store i8* %353, i8** %352, align 8
  %354 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %351, i32 0, i32 1
  %355 = extractvalue { i8*, i32 } %350, 1
  store i32 %355, i32* %354, align 8
  br label %471

356:                                              ; preds = %343
  %357 = load i32*, i32** %3, align 8
  %358 = call { i8*, i32 } @c_parser_alignof_expression(i32* %357)
  %359 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %360 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %359, i32 0, i32 0
  %361 = extractvalue { i8*, i32 } %358, 0
  store i8* %361, i8** %360, align 8
  %362 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %359, i32 0, i32 1
  %363 = extractvalue { i8*, i32 } %358, 1
  store i32 %363, i32* %362, align 8
  br label %471

364:                                              ; preds = %343
  %365 = load i32*, i32** %3, align 8
  %366 = call i32 @c_parser_consume_token(i32* %365)
  %367 = call i32 (...) @disable_extension_diagnostics()
  store i32 %367, i32* %4, align 4
  %368 = load i32*, i32** %3, align 8
  %369 = call { i8*, i32 } @c_parser_cast_expression(i32* %368, i32* null)
  %370 = bitcast %struct.c_expr* %22 to { i8*, i32 }*
  %371 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %370, i32 0, i32 0
  %372 = extractvalue { i8*, i32 } %369, 0
  store i8* %372, i8** %371, align 8
  %373 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %370, i32 0, i32 1
  %374 = extractvalue { i8*, i32 } %369, 1
  store i32 %374, i32* %373, align 8
  %375 = bitcast %struct.c_expr* %5 to i8*
  %376 = bitcast %struct.c_expr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %375, i8* align 8 %376, i64 16, i1 false)
  %377 = load i32, i32* %4, align 4
  %378 = call i32 @restore_extension_diagnostics(i32 %377)
  %379 = bitcast %struct.c_expr* %2 to i8*
  %380 = bitcast %struct.c_expr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %379, i8* align 8 %380, i64 16, i1 false)
  br label %471

381:                                              ; preds = %343
  %382 = load i32*, i32** %3, align 8
  %383 = call i32 @c_parser_consume_token(i32* %382)
  %384 = load i32*, i32** %3, align 8
  %385 = call { i8*, i32 } @c_parser_cast_expression(i32* %384, i32* null)
  %386 = bitcast %struct.c_expr* %23 to { i8*, i32 }*
  %387 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %386, i32 0, i32 0
  %388 = extractvalue { i8*, i32 } %385, 0
  store i8* %388, i8** %387, align 8
  %389 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %386, i32 0, i32 1
  %390 = extractvalue { i8*, i32 } %385, 1
  store i32 %390, i32* %389, align 8
  %391 = bitcast %struct.c_expr* %6 to i8*
  %392 = bitcast %struct.c_expr* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %391, i8* align 8 %392, i64 16, i1 false)
  %393 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %394 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %393, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  %396 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %393, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = call { i8*, i32 } @default_function_array_conversion(i8* %395, i32 %397)
  %399 = bitcast %struct.c_expr* %24 to { i8*, i32 }*
  %400 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %399, i32 0, i32 0
  %401 = extractvalue { i8*, i32 } %398, 0
  store i8* %401, i8** %400, align 8
  %402 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %399, i32 0, i32 1
  %403 = extractvalue { i8*, i32 } %398, 1
  store i32 %403, i32* %402, align 8
  %404 = bitcast %struct.c_expr* %6 to i8*
  %405 = bitcast %struct.c_expr* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %404, i8* align 8 %405, i64 16, i1 false)
  %406 = load i32, i32* @REALPART_EXPR, align 4
  %407 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %408 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %407, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = call { i8*, i32 } @parser_build_unary_op(i32 %406, i8* %409, i32 %411)
  %413 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %414 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %413, i32 0, i32 0
  %415 = extractvalue { i8*, i32 } %412, 0
  store i8* %415, i8** %414, align 8
  %416 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %413, i32 0, i32 1
  %417 = extractvalue { i8*, i32 } %412, 1
  store i32 %417, i32* %416, align 8
  br label %471

418:                                              ; preds = %343
  %419 = load i32*, i32** %3, align 8
  %420 = call i32 @c_parser_consume_token(i32* %419)
  %421 = load i32*, i32** %3, align 8
  %422 = call { i8*, i32 } @c_parser_cast_expression(i32* %421, i32* null)
  %423 = bitcast %struct.c_expr* %25 to { i8*, i32 }*
  %424 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %423, i32 0, i32 0
  %425 = extractvalue { i8*, i32 } %422, 0
  store i8* %425, i8** %424, align 8
  %426 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %423, i32 0, i32 1
  %427 = extractvalue { i8*, i32 } %422, 1
  store i32 %427, i32* %426, align 8
  %428 = bitcast %struct.c_expr* %6 to i8*
  %429 = bitcast %struct.c_expr* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %428, i8* align 8 %429, i64 16, i1 false)
  %430 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %431 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %430, i32 0, i32 0
  %432 = load i8*, i8** %431, align 8
  %433 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %430, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = call { i8*, i32 } @default_function_array_conversion(i8* %432, i32 %434)
  %436 = bitcast %struct.c_expr* %26 to { i8*, i32 }*
  %437 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %436, i32 0, i32 0
  %438 = extractvalue { i8*, i32 } %435, 0
  store i8* %438, i8** %437, align 8
  %439 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %436, i32 0, i32 1
  %440 = extractvalue { i8*, i32 } %435, 1
  store i32 %440, i32* %439, align 8
  %441 = bitcast %struct.c_expr* %6 to i8*
  %442 = bitcast %struct.c_expr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %441, i8* align 8 %442, i64 16, i1 false)
  %443 = load i32, i32* @IMAGPART_EXPR, align 4
  %444 = bitcast %struct.c_expr* %6 to { i8*, i32 }*
  %445 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %444, i32 0, i32 0
  %446 = load i8*, i8** %445, align 8
  %447 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %444, i32 0, i32 1
  %448 = load i32, i32* %447, align 8
  %449 = call { i8*, i32 } @parser_build_unary_op(i32 %443, i8* %446, i32 %448)
  %450 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %451 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %450, i32 0, i32 0
  %452 = extractvalue { i8*, i32 } %449, 0
  store i8* %452, i8** %451, align 8
  %453 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %450, i32 0, i32 1
  %454 = extractvalue { i8*, i32 } %449, 1
  store i32 %454, i32* %453, align 8
  br label %471

455:                                              ; preds = %343
  %456 = load i32*, i32** %3, align 8
  %457 = call { i8*, i32 } @c_parser_postfix_expression(i32* %456)
  %458 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %459 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %458, i32 0, i32 0
  %460 = extractvalue { i8*, i32 } %457, 0
  store i8* %460, i8** %459, align 8
  %461 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %458, i32 0, i32 1
  %462 = extractvalue { i8*, i32 } %457, 1
  store i32 %462, i32* %461, align 8
  br label %471

463:                                              ; preds = %1
  %464 = load i32*, i32** %3, align 8
  %465 = call { i8*, i32 } @c_parser_postfix_expression(i32* %464)
  %466 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %467 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %466, i32 0, i32 0
  %468 = extractvalue { i8*, i32 } %465, 0
  store i8* %468, i8** %467, align 8
  %469 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %466, i32 0, i32 1
  %470 = extractvalue { i8*, i32 } %465, 1
  store i32 %470, i32* %469, align 8
  br label %471

471:                                              ; preds = %463, %455, %418, %381, %364, %356, %348, %338, %280, %243, %206, %171, %127, %105, %68, %31
  %472 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %473 = load { i8*, i32 }, { i8*, i32 }* %472, align 8
  ret { i8*, i32 } %473
}

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local { i8*, i32 } @c_parser_cast_expression(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i8*, i32 } @default_function_array_conversion(i8*, i32) #1

declare dso_local { i8*, i32 } @parser_build_unary_op(i32, i8*, i32) #1

declare dso_local i32 @build_indirect_ref(i32, i8*) #1

declare dso_local i32 @c_dialect_objc(...) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @finish_label_address_expr(i32) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local { i8*, i32 } @c_parser_sizeof_expression(i32*) #1

declare dso_local { i8*, i32 } @c_parser_alignof_expression(i32*) #1

declare dso_local i32 @disable_extension_diagnostics(...) #1

declare dso_local i32 @restore_extension_diagnostics(i32) #1

declare dso_local { i8*, i32 } @c_parser_postfix_expression(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
