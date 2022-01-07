; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_postfix_expression_after_primary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_postfix_expression_after_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CPP_CLOSE_SQUARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<]%>\00", align 1
@ERROR_MARK = common dso_local global i8* null, align 8
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@CPP_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@error_mark_node = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@POSTINCREMENT_EXPR = common dso_local global i32 0, align 4
@POSTDECREMENT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i8* } (i32*, i8*, i8*)* @c_parser_postfix_expression_after_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i8* } @c_parser_postfix_expression_after_primary(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca %struct.c_expr, align 8
  %12 = alloca %struct.c_expr, align 8
  %13 = alloca %struct.c_expr, align 8
  %14 = alloca %struct.c_expr, align 8
  %15 = bitcast %struct.c_expr* %5 to { i8*, i8* }*
  %16 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %15, i32 0, i32 0
  store i8* %1, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %15, i32 0, i32 1
  store i8* %2, i8** %17, align 8
  store i32* %0, i32** %6, align 8
  br label %18

18:                                               ; preds = %3, %202
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %199 [
    i32 129, label %23
    i32 130, label %41
    i32 132, label %64
    i32 133, label %108
    i32 128, label %153
    i32 131, label %176
  ]

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @c_parser_consume_token(i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @c_parser_expression(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @CPP_CLOSE_SQUARE, align 4
  %33 = call i32 @c_parser_skip_until_found(i32* %31, i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @build_array_ref(i8* %35, i32 %36)
  %38 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** @ERROR_MARK, align 8
  %40 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  br label %202

41:                                               ; preds = %18
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @c_parser_consume_token(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %46 = call i32 @c_parser_next_token_is(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @NULL_TREE, align 4
  store i32 %49, i32* %9, align 4
  br label %53

50:                                               ; preds = %41
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @c_parser_expr_list(i32* %51, i32 1)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %48
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %56 = call i32 @c_parser_skip_until_found(i32* %54, i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %57 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @build_function_call(i8* %58, i32 %59)
  %61 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = load i8*, i8** @ERROR_MARK, align 8
  %63 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  br label %202

64:                                               ; preds = %18
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @c_parser_consume_token(i32* %65)
  %67 = bitcast %struct.c_expr* %5 to { i8*, i8* }*
  %68 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %67, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call { i8*, i8* } @default_function_array_conversion(i8* %69, i8* %71)
  %73 = bitcast %struct.c_expr* %11 to { i8*, i8* }*
  %74 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %73, i32 0, i32 0
  %75 = extractvalue { i8*, i8* } %72, 0
  store i8* %75, i8** %74, align 8
  %76 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %73, i32 0, i32 1
  %77 = extractvalue { i8*, i8* } %72, 1
  store i8* %77, i8** %76, align 8
  %78 = bitcast %struct.c_expr* %5 to i8*
  %79 = bitcast %struct.c_expr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* @CPP_NAME, align 4
  %82 = call i32 @c_parser_next_token_is(i32* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %64
  %85 = load i32*, i32** %6, align 8
  %86 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %7, align 4
  br label %98

89:                                               ; preds = %64
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @c_parser_error(i32* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i8*, i8** @error_mark_node, align 8
  %93 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** @ERROR_MARK, align 8
  %95 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  %96 = bitcast %struct.c_expr* %4 to i8*
  %97 = bitcast %struct.c_expr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 16, i1 false)
  br label %203

98:                                               ; preds = %84
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @c_parser_consume_token(i32* %99)
  %101 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i8* @build_component_ref(i8* %102, i32 %103)
  %105 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i8* %104, i8** %105, align 8
  %106 = load i8*, i8** @ERROR_MARK, align 8
  %107 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %106, i8** %107, align 8
  br label %202

108:                                              ; preds = %18
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @c_parser_consume_token(i32* %109)
  %111 = bitcast %struct.c_expr* %5 to { i8*, i8* }*
  %112 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %111, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call { i8*, i8* } @default_function_array_conversion(i8* %113, i8* %115)
  %117 = bitcast %struct.c_expr* %12 to { i8*, i8* }*
  %118 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %117, i32 0, i32 0
  %119 = extractvalue { i8*, i8* } %116, 0
  store i8* %119, i8** %118, align 8
  %120 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %117, i32 0, i32 1
  %121 = extractvalue { i8*, i8* } %116, 1
  store i8* %121, i8** %120, align 8
  %122 = bitcast %struct.c_expr* %5 to i8*
  %123 = bitcast %struct.c_expr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 16, i1 false)
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* @CPP_NAME, align 4
  %126 = call i32 @c_parser_next_token_is(i32* %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %108
  %129 = load i32*, i32** %6, align 8
  %130 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %129)
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %7, align 4
  br label %142

133:                                              ; preds = %108
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @c_parser_error(i32* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i8*, i8** @error_mark_node, align 8
  %137 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i8* %136, i8** %137, align 8
  %138 = load i8*, i8** @ERROR_MARK, align 8
  %139 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %138, i8** %139, align 8
  %140 = bitcast %struct.c_expr* %4 to i8*
  %141 = bitcast %struct.c_expr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  br label %203

142:                                              ; preds = %128
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @c_parser_consume_token(i32* %143)
  %145 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @build_indirect_ref(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i32, i32* %7, align 4
  %149 = call i8* @build_component_ref(i8* %147, i32 %148)
  %150 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i8* %149, i8** %150, align 8
  %151 = load i8*, i8** @ERROR_MARK, align 8
  %152 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %151, i8** %152, align 8
  br label %202

153:                                              ; preds = %18
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @c_parser_consume_token(i32* %154)
  %156 = bitcast %struct.c_expr* %5 to { i8*, i8* }*
  %157 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %156, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call { i8*, i8* } @default_function_array_conversion(i8* %158, i8* %160)
  %162 = bitcast %struct.c_expr* %13 to { i8*, i8* }*
  %163 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %162, i32 0, i32 0
  %164 = extractvalue { i8*, i8* } %161, 0
  store i8* %164, i8** %163, align 8
  %165 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %162, i32 0, i32 1
  %166 = extractvalue { i8*, i8* } %161, 1
  store i8* %166, i8** %165, align 8
  %167 = bitcast %struct.c_expr* %5 to i8*
  %168 = bitcast %struct.c_expr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %167, i8* align 8 %168, i64 16, i1 false)
  %169 = load i32, i32* @POSTINCREMENT_EXPR, align 4
  %170 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @build_unary_op(i32 %169, i8* %171, i32 0)
  %173 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i8* %172, i8** %173, align 8
  %174 = load i8*, i8** @ERROR_MARK, align 8
  %175 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %174, i8** %175, align 8
  br label %202

176:                                              ; preds = %18
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @c_parser_consume_token(i32* %177)
  %179 = bitcast %struct.c_expr* %5 to { i8*, i8* }*
  %180 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %179, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call { i8*, i8* } @default_function_array_conversion(i8* %181, i8* %183)
  %185 = bitcast %struct.c_expr* %14 to { i8*, i8* }*
  %186 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %185, i32 0, i32 0
  %187 = extractvalue { i8*, i8* } %184, 0
  store i8* %187, i8** %186, align 8
  %188 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %185, i32 0, i32 1
  %189 = extractvalue { i8*, i8* } %184, 1
  store i8* %189, i8** %188, align 8
  %190 = bitcast %struct.c_expr* %5 to i8*
  %191 = bitcast %struct.c_expr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 8 %191, i64 16, i1 false)
  %192 = load i32, i32* @POSTDECREMENT_EXPR, align 4
  %193 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = call i8* @build_unary_op(i32 %192, i8* %194, i32 0)
  %196 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i8* %195, i8** %196, align 8
  %197 = load i8*, i8** @ERROR_MARK, align 8
  %198 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %197, i8** %198, align 8
  br label %202

199:                                              ; preds = %18
  %200 = bitcast %struct.c_expr* %4 to i8*
  %201 = bitcast %struct.c_expr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 16, i1 false)
  br label %203

202:                                              ; preds = %176, %153, %142, %98, %53, %23
  br label %18

203:                                              ; preds = %199, %133, %89
  %204 = bitcast %struct.c_expr* %4 to { i8*, i8* }*
  %205 = load { i8*, i8* }, { i8*, i8* }* %204, align 8
  ret { i8*, i8* } %205
}

declare dso_local %struct.TYPE_3__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_expression(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i8* @build_array_ref(i8*, i32) #1

declare dso_local i32 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_expr_list(i32*, i32) #1

declare dso_local i8* @build_function_call(i8*, i32) #1

declare dso_local { i8*, i8* } @default_function_array_conversion(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i8* @build_component_ref(i8*, i32) #1

declare dso_local i8* @build_indirect_ref(i8*, i8*) #1

declare dso_local i8* @build_unary_op(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
